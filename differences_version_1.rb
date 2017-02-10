old_inventory = File.open('old-inventory.txt').readlines
new_inventory = File.open('new-inventory.txt').readlines

puts ("The following files have been added:")
puts new_inventory - old_inventory
number_of_files_added = (new_inventory - old_inventory).length
added = "Number of files added:  #{number_of_files_added}"
puts added



puts ""
puts ("The following files have been deleted:")
puts old_inventory - new_inventory
number_of_files_deleted = (old_inventory - new_inventory).length
deleted = "Number of files deleted:  #{number_of_files_deleted}"
puts deleted

total_files = (new_inventory.length + old_inventory.length)
changed_files = (number_of_files_deleted + number_of_files_added)
unchanged_files = total_files - changed_files
unchanged = "Number of files unchanged:  #{unchanged_files}"

puts unchanged
