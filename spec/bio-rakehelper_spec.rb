require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "BioRakehelper" do

  subject do
    Bio::RakeHelper
  end
 
  describe '.suffix' do
    context 'when called with ("test.obj", ".obj => ".src")' do
      it 'returns ("test.src")' do
        subject.suffix("test.obj",
                       ".obj" => ".src"
                       ).should == "test.src"
      end
    end

    context 'when called with ("test.foo.obj", ".foo.obj" => ".abc.def.src")' do
      it 'returns ("test.abc.def.src")' do
        subject.suffix("test.foo.obj",
                       ".foo.obj" => ".abc.def.src"
                       ).should == "test.abc.def.src"
      end
    end
  end

  describe '.suffix_proc' do
    context 'when called with (".obj => ".src")' do
      it 'returns a Proc' do
        subject.suffix_proc(".obj" => ".src").should be_a Proc
      end
    end
  end

  describe '
end
