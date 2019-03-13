require 'decisiontree'

attributes = ['Temp']

training = [
    [98.7, 'healthy'],
    [99.1, 'healthy'],
    [99.5, 'sick'],
    [100.5, 'sick'],
    [102.7, 'crazy sick'],
]

desc_tree = DecisionTree::ID3Tree.new(attributes, training, 'sick', :continuous)
desc_tree.train

test = [108.5, 'healthy']
puts desc_tree.predict(test)