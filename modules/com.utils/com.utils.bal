public isolated readonly class Version1 {
    public final string name;

    public isolated function init(string name) {
        self.name = name;
    }

    public isolated function getName() returns string{
        return self.name;
    }
}

public isolated function getInst(string name) returns Version1 {
    return new Version1(name);
}
