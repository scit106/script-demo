# Rename one File
# File.rename("./renameThese/myfile_1.txt", "./renameThese/funfile_1.txt")


# Let's Add Variables
# pathToFiles = "./renameThese/"
# fileToRename = "myfile_1.txt"
# newFileName = "funfile_1.txt"
# File.rename(pathToFiles + fileToRename, pathToFiles + newFileName)

# Let's rename multiple files!
# pathToFiles = "./renameThese/"
# patternToMatch = /myfile/
# Dir.foreach(pathToFiles) do |file|
# 	if patternToMatch.match(file)
# 		newFileName = file.gsub(patternToMatch, 'funfile')
# 		File.rename(pathToFiles + file, pathToFiles + newFileName)
# 	end
# end

# Get input from the user
# puts "What do you want to replace?"
# patternToMatch = gets.chomp!
# puts "Will replace #{patternToMatch}, What do you want to replace it with?"
# newPattern = gets.chomp!
# pathToFiles = "./renameThese/"
# patternToMatch = Regexp.escape(patternToMatch)
# patternToMatch = /#{patternToMatch}/
# Dir.foreach(pathToFiles) do |file|
# 	if patternToMatch.match(file)
# 		newFileName = file.gsub(patternToMatch, newPattern)
# 		File.rename(pathToFiles + file, pathToFiles + newFileName)
# 	end
# end

# Let's get arguments from the command line
# ARGV.each do |arg|
# 	puts arg
# end
patternToMatch = ARGV[0]
newPattern = ARGV[1]
pathToFiles = "./renameThese/"
patternToMatch = Regexp.escape(patternToMatch)
patternToMatch = /#{patternToMatch}/
Dir.foreach(pathToFiles) do |file|
	if patternToMatch.match(file)
		newFileName = file.gsub(patternToMatch, newPattern)
		File.rename(pathToFiles + file, pathToFiles + newFileName)
	end
end
