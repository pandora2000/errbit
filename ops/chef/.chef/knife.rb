cookbook_path ["cookbooks", "site-cookbooks"]
node_path "nodes"
environment_path "environments"
data_bag_path "data_bags"
encrypted_data_bag_secret ".chef/data_bag_key"

knife[:berkshelf_path] = "cookbooks"
