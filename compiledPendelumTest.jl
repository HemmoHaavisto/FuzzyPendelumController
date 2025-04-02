using FuzzyLogic, Plots

fis = @sugfis function tsForce(angle, velocity)::force
    angle := begin
        domain = -0.50:0.50
        N = FuzzyLogic.LinearMF(0.20, -0.20)
        P = FuzzyLogic.LinearMF(-0.20, 0.20)
    end

    velocity := begin
        domain = -3.00:3.00
        N = FuzzyLogic.LinearMF(1.00, -1.00)
        P = FuzzyLogic.LinearMF(-1.00, 1.00)
    end

    force := begin
        domain = -100.00:100.00
        N1 = 41.40 * angle, 3.16 * velocity, 0.34
        N5 = 38.60 * angle, 3.16 * velocity, 0.21
        P9 = 38.60 * angle, 3.16 * velocity, 0.05
        P13 = 41.40 * angle, 3.16 * velocity, -0.34
    end

    angle == N && velocity == N --> force == N1
    angle == N && velocity == P --> force == N5
    angle == P && velocity == N --> force == P9
    angle == P && velocity == P --> force == P13
end

fis_ex = (compilefis(fis))
eval(fis_ex)
println(tsForce(0.0, -0.0230374122))

display(Plots.plot(gensurf(fis)))
readline()
display(Plots.plot(plot(fis)))
readline()
