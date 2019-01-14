package com.narendra.uploader;

import org.apache.maven.model.Model;
import org.apache.maven.model.io.xpp3.MavenXpp3Reader;
import org.codehaus.plexus.util.xml.pull.XmlPullParserException;

import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Application {
  public static void main(String[] args) throws IOException, XmlPullParserException {
    MavenXpp3Reader reader = new MavenXpp3Reader();
    Model model;
    if ((new File("pom.xml")).exists())
      model = reader.read(new FileReader("pom.xml"));
    else
      model = reader.read(
        new InputStreamReader(
          Application.class.getResourceAsStream(    "C:/Users/nchaudhary/Desktop/stock/mysaver/pom.xml" )
        )
      );
    System.out.println(model.getId());
    System.out.println(model.getGroupId());
    System.out.println(model.getArtifactId());
    System.out.println(model.getVersion());
  }
}