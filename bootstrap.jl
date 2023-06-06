(pwd() != @__DIR__) && cd(@__DIR__) # allow starting app from bin/ dir

using HelloCloud
const UserApp = HelloCloud
HelloCloud.main()
