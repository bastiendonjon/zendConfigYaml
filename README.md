zendConfigYaml
==============

A simple parser for yaml application zend framework 1.12 file in ruby.

Gem file to Loading/Parsing yaml file and merge section for extend configurations.

**Exemple:**

	require 'zendConfigYaml'
	require 'pp'
	yml = ZendConfigYaml.load('configs/application.yml', 'development')
	pp yml

**Arguments:**

* filePath: (string) path to yaml file
* section: (string) section name for get values
  
**Result:**
  A hash containing a section extended with another potential section
