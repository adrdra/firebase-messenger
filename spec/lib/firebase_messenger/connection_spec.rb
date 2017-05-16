require 'spec_helper'

describe FirebaseMessenger::Connection do
  describe '#get' do
    subject { FirebaseMessenger::Connection.new('notif') }

    it 'makes a get call' do
      request = double

      expect(subject).to receive(:conn).and_return(request)
      expect(request).to receive(:get)
        .with("#{FirebaseMessenger.api_base}/notif", '{}')

      subject.get
    end
  end

  describe '#post' do
    subject { FirebaseMessenger::Connection.new('notif') }

    it 'makes a post call' do
      request = double

      expect(subject).to receive(:conn).and_return(request)
      expect(request).to receive(:post)
        .with("#{FirebaseMessenger.api_base}/notif", '{}')

      subject.post
    end
  end

  describe '#conn' do
    subject { FirebaseMessenger::Connection.new(nil, nil).send(:conn) }

    it 'builds header' do
      expect(subject.headers['project_id']).to eq(FirebaseMessenger.project_id)
      expect(subject.headers['Authorization']).to eq("key=#{FirebaseMessenger.api_key}")
      expect(subject.headers['Content-Type']).to eq('application/json; charset=utf-8')
    end
  end
end
