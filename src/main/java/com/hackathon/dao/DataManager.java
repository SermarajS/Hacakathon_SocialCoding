package com.hackathon.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import software.amazon.awssdk.regions.Region;
import software.amazon.awssdk.services.dynamodb.DynamoDbClient;
import software.amazon.awssdk.services.dynamodb.model.ListTablesRequest;
import software.amazon.awssdk.services.dynamodb.model.ListTablesResponse;
import software.amazon.awssdk.services.s3.S3Client;

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
		ListTablesResponse response = null;
        ListTablesRequest request = ListTablesRequest.builder().build();
        response = ddb.listTables(request);
        List tNames=response.tableNames();
        for(Object tname : tNames) {
        	System.out.println("TNAME: ");
        	System.out.println(tname.getClass());
        }
	}
	
}
