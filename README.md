zendConfigYaml
==============

A simple parser for yaml application zend framework 1.12 file in ruby

Class to Loading/Parsing yaml file and merge section for extend configurations

Exemple:
  >> yml = ZendConfigYaml.load('configs/application.yml', 'development')

Arguments:
  filePath: (string) path to yaml file
  section: (string) section name for get values
  
Result:
  A hash containing a section extended with another potential section
