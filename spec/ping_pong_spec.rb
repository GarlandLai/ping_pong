require('rspec')
require('ping_pong')

describe('#ping_pong') do
  it("Counts from 1 to any given number") do
    expect(2.ping_pong).to(eq([1, 2]))
  end
  describe('#ping_pong') do
    it("Replaces any number divisible by 3 to ping") do
      expect(3.ping_pong).to(eq([1, 2, "ping"]))
    end
    describe('#ping_pong') do
      it("Replaces any number divisible by 5 to pong") do
        expect(5.ping_pong).to(eq([1, 2, "ping", 4, "pong"]))
      end
      describe('#ping_pong') do
        it("Replaces any number divisible by 3 and 5 to pingpong") do
          expect(15.ping_pong).to(eq([1, 2, "ping", 4, "pong", "ping", 7, 8, "ping", "pong", 11, "ping", 13, 14, "pingpong"]))
        end
      end
    end
  end
end
