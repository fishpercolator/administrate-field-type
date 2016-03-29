require 'spec_helper'

describe Administrate::Field::Type do
  
  subject { described_class.new(:example, 'type', :form) }
  
  let(:options) { {} }
  before(:each) do
    allow(subject).to receive(:options).and_return(options)
  end
  
  describe '#choices' do
    context 'no options' do
      it 'raises an exception' do
        expect{subject.choices}.to raise_error(ArgumentError)
      end
    end
    context 'with just a class_name' do
      let(:options) { {class_name: 'Example'} }
      it 'lists all the subclasses' do
        expect(subject.choices).to eq(%w{One Two Three})
      end
    end
    context 'with class_name and include_parent' do
      let(:options) { {class_name: 'Example', include_parent: true} }
      it 'lists the parent first, then the subclasses' do
        expect(subject.choices).to eq(%w{Example One Two Three})
      end
    end
  end

end
