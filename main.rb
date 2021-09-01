text = ""

File.open("loremipsum.txt", 'r') do |file|
  text = file.to_a.to_s.downcase.gsub(/[^a-z\s'-]/, '')
end

freq = {}
words = text.split(/\s+/)

freq = words.uniq.each{|word| freq[word] = words.count(word)}
# puts(freq)
# puts(words.uniq.sort)
counts = {}
for word in words 
  if counts.key?(word)
    counts[word] += 1
  else 
    counts[word] = 1
  end
end 
other = {}
words.each{|word| other.key?(word) ? other[word] += 1 : other[word] = 1}
# puts(freq == counts && counts == other)
 sorted = counts.to_a.sort_by{|k, v| v}.to_h
# sorted.each{|a| print(a); puts}

# concordance = freq.to_a.sort
# concordance.each{|a| print(a); puts}