package edu.wccnet.emeyer.springMVC.domain;

import java.util.LinkedHashMap;
import java.util.Map;

import org.springframework.stereotype.Component;

@Component
public class PetRegService {
	public Map<String, String>populateSpecies(){
		Map<String,String> speciesList = new LinkedHashMap<String,String>();
		
		speciesList.put("none", "---SELECT---");
		speciesList.put("dog", "Dog");
		speciesList.put("cat", "Cat");
		speciesList.put("bird", "Bird");
		speciesList.put("rabbit", "Rabbit");
		return speciesList;
	}
	public Map<String, String>populateGender(){
		Map<String,String> genderList = new LinkedHashMap<String,String>();
		genderList.put("Male", "Male");
		genderList.put("Female", "Female");
		return genderList;
	}
	public Map<String, String>populateSource(){
		Map<String,String> sourceList = new LinkedHashMap<String,String>();
		sourceList.put("Google", "Google");
		sourceList.put("NextDoor", "Next Door");
		sourceList.put("FnF", "Family and Friends");
		sourceList.put("Other", "Other");
		return sourceList;
	}
	

	
}
