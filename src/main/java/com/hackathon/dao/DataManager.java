package com.hackathon.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.GetMapping;

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
    
    String tableName = "SocialCodingSA_DB";
    String partitionAlias = "#a";
    String partitionKeyName = "Artist";
    String partitionKeyVal = "AWS Band";

	
	DynamoDbClient ddb = DynamoDbClient.builder()
           // .credentialsProvider(credentialsProvider)
            .region(region)
            .build();
	
	
	public void DataManagerTest() {
		baseDAO = new BaseDAO();
		System.out.println(baseDAO.BaseDAOTest());
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
    	ListObjectsRequest listObjects = ListObjectsRequest
                .builder()
                .bucket(bucketName)
                .build();

            ListObjectsResponse res = s3.listObjects(listObjects);
            List<S3Object> objects = res.contents();
            List<String> objectsStr = new ArrayList<String>();
            for (S3Object myValue : objects) {
            	objectsStr.add(myValue.key());
            }
            return objectsStr;
    }
	
}
