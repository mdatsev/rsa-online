RSpec.describe EncryptMessagesController do 
    fixtures :rsas
    
    it "gets by id" do
        post :create, params: {rsa_id: rsas(:wikipedia).id, message: "hello"}
        expect(EncryptMessage.where(id: response.body.to_i)).to exist
    end

end