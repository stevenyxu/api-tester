# load recipes
recipes = YAML::load(File.read(File.join(JSONAPITester::Base.root, 'config', 'recipes.yml')))
