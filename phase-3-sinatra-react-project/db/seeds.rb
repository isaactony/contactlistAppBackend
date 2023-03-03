puts "🌱 Seeding spices..."

# Seed your database here
# Create groups
family = Group.create(groupname: 'Family')
friends = Group.create(groupname: 'Friends')

# Create contacts

# Print out the contacts with their group id

Group.all.each do |contact|
    puts "Name: #{contact.groupname}, Group ID: #{contact.id}"
    Contact.create(name: 'John Doe', phone: '123-456-7890', email_id: 'john@example.com', group_id: contact.id)
    Contact.create(name: 'Jane Doe', phone: '987-654-3210', email_id: 'jane@example.com', group_id: contact.id)
    Contact.create(name: 'Bob Smith', phone: '555-123-4567', email_id: 'bob@example.com', group_id: contact.id)
    Contact.create(name: 'Alice Johnson', phone: '555-987-6543', email_id: 'alice@example.com', group_id: contact.id)

  end



puts "✅ Done seeding!"
