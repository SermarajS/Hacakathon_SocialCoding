package com.hackathon.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

import com.amazonaws.services.dynamodbv2.AmazonDynamoDB;
import com.amazonaws.services.dynamodbv2.AmazonDynamoDBClientBuilder;
import com.amazonaws.services.dynamodbv2.document.DynamoDB;
import com.amazonaws.services.dynamodbv2.document.Item;
import com.amazonaws.services.dynamodbv2.document.Table;

import software.amazon.awssdk.regions.Region;
import software.amazon.awssdk.services.dynamodb.DynamoDbClient;
import software.amazon.awssdk.services.dynamodb.model.ListTablesRequest;
import software.amazon.awssdk.services.dynamodb.model.ListTablesResponse;
import software.amazon.awssdk.services.s3.S3Client;
import software.amazon.awssdk.services.s3.model.ListObjectsRequest;
import software.amazon.awssdk.services.s3.model.ListObjectsResponse;
import software.amazon.awssdk.services.s3.model.S3Object;

@Component
public class DataManager {
	
	BaseDAO baseDAO;
	
	Region region = Region.US_EAST_1;
    String bucketName = "citi-hackathon-test-82946892";
    
   // ProfileCredentialsProvider credentialsProvider = ProfileCredentialsProvider.create();
    S3Client s3 = S3Client.builder()
        .region(region)
      //  .credentialsProvider(credentialsProvider)
        .build();
    
    String tableName = "SocialCoding-DB";
    String partitionAlias = "#a";
    String partitionKeyName = "Artist";
    String partitionKeyVal = "AWS Band";

	
	DynamoDbClient ddb = DynamoDbClient.builder()
           // .credentialsProvider(credentialsProvider)
            .region(region)
            .build();
	
	//static DynamoDB dynamoDB = new DynamoDB(new AmazonDynamoDBClient(new ProfileCredentialsProvider()));
	AmazonDynamoDB client = AmazonDynamoDBClientBuilder.standard().build();
	DynamoDB dynamoDB = new DynamoDB(client);
	
	public void DataManagerTest() {
		baseDAO = new BaseDAO();
		System.out.println(baseDAO.BaseDAOTest());
		retrieve();
		GetObject();
		ListTablesResponse response = null;
        ListTablesRequest request = ListTablesRequest.builder().build();
        System.out.println("ListTablesRequest "+request);
        response = ddb.listTables(request);
        System.out.println("ListTablesResponse "+response);
        List tNames=response.tableNames();
        System.out.println("tNames "+tNames);
        for(Object tname : tNames) {
        	System.out.println("TNAME: ");
        	System.out.println(tname.getClass());
        }
        
	}

    public List<String> GetObject(){
//    	return "Hello S3";
    	System.out.println("GetObject");
    	
    	ListObjectsRequest listObjects = ListObjectsRequest
                .builder()
                .bucket(bucketName)
                .build();

            ListObjectsResponse res = s3.listObjects(listObjects);
            List<S3Object> objects = res.contents();
            List<String> objectsStr = new ArrayList<String>();
            for (S3Object myValue : objects) {
            	objectsStr.add(myValue.key());
            	System.out.println("GO->"+myValue.key());
            }
            return objectsStr;
    }
    
    public void retrieve() {
    	System.out.println("RETRIEVEE");
    	Table tableName = dynamoDB.getTable("SocialCoding-DB");
    	System.out.println("tablename "+tableName);
    	try {
    		Item item = tableName.getItem("UserId","Admin001@gmail.com");
    		System.out.println("Before");
    		System.out.println(item.toJSONPretty());
    	}catch(Exception e) {
    		e.printStackTrace();
    	}
    
    }
	
}
