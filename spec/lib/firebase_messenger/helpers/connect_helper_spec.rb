require 'spec_helper'

describe FirebaseMessenger::Helpers::ConnectHelper do
  describe '#conn' do
    let(:endpoint) { 'send' }

    it 'Instantiate FirebaseMessenger::Connection' do
      expect(FirebaseMessenger::Connection).to receive(:new)
        .with(endpoint, {})

      conn(endpoint)
    end
  end
end
