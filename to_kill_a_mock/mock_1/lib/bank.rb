class Bank
  attr_reader :clients, :name

  def initialize(name)
    @name = name
    @clients = Hash.new do |new_hash, new_key| 
      new_hash[new_key] = []
    end
  end

  def register_new_client(client)
    @clients[client.account_type] << client
  end

  def sum_all_client_accounts
    client_instances.map(&:sum_of_all_accounts).inject(0, &:+)
  end

  private

  def client_instances
    @clients.values
  end
end
