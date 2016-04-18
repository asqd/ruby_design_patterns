require 'spec_helper'
require_relative '../lib/command'

describe "Command Pattern" do

  describe Computer do
    let(:computer) { Computer.new }

    before :each do
      computer.add(CalibrateDriverCommand.new)
      computer.add(TestCompilerCommand.new)
    end

    it "can add commands to its queue" do
      expect(computer.queue.size).to eq(2)
    end

    it "execute all commands its queue" do
      expect(computer.execute).to eq "\nCalibrated Uranium-Rod Driver\nTested Jupiter Wave Compiler\n"
    end
  end

  describe "Commands" do
    describe AmplifyShieldCommand do
      it "amplifies shield" do
        command = AmplifyShieldCommand.new
        expect(command.execute).to eq("Amplified Plutonium-Gamma Shield")
      end
    end

    describe CalibrateDriverCommand do
      it "amplifies shield" do
        command = CalibrateDriverCommand.new
        expect(command.execute).to eq("Calibrated Uranium-Rod Driver")
      end
    end

    describe TestCompilerCommand do
      it "amplifies shield" do
        command = TestCompilerCommand.new
        expect(command.execute).to eq("Tested Jupiter Wave Compiler")
      end
    end

    describe InstallRegulatorCommand do
      it "amplifies shield" do
        command = InstallRegulatorCommand.new
        expect(command.execute).to eq("Installed Hydroelectric Magnetosphere Regulator")
      end
    end
  end
end