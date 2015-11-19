package com.sample.rest;

import javax.ws.rs.core.MediaType;

import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.WebResource;

public class SampleClient {

	static Client client = Client.create();

	// set the appropriate URL

	static String getUrl = "http://localhost:8080/RESTSample/rest/hello";
	
	
	
	public static void main(String[] args) {

		getRequest();

	}

	public static void getRequest() {

		WebResource webResource = client.resource(getUrl+"/param");

		ClientResponse response = webResource.accept(MediaType.TEXT_PLAIN).get(ClientResponse.class);


		// a successful response returns 200

		if (response.getStatus() != 200) {

			throw new RuntimeException("HTTP Error: " + response.getStatus());

		}

		String result = response.getEntity(String.class);

		System.out.println("Response from the Server: ");

		System.out.println(result);
		
		webResource = client.resource(getUrl);

		response = webResource.accept(MediaType.TEXT_PLAIN).get(ClientResponse.class);
		
		System.out.println("Text:" + result);
		
	
		

	}

}
