require 'yaml'

# Add a recusive merge
class ::Hash
    def deep_merge(second)
        merger = proc { |key, v1, v2| Hash === v1 && Hash === v2 ? v1.merge(v2, &merger) : v2 }
        self.merge(second, &merger)
    end
end

# Loading and parse yaml file
#
# Exemple:
#   >> yml = ZendConfigYaml.load('configs/application.yml')
#
# Arguments:
#   filePath: (string) path to yaml file
#   section: (string) section name
def load(filePath, section)

        # Load file and parsing
        yml = YAML.load(File.new(filePath, "r"))

        # Test if th section exist
        if yml.has_key?(section) == false
                raise "La section '#{section}' n'existe pas."
        end

        # Default value
        actualYml =  yml[section]

        # Test if the extends key exist
        if yml[section].has_key?('_extends')
                actualYml = yml[yml[section]['_extends']].deep_merge(yml[section])
        end

        return actualYml

end