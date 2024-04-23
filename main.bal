import ballerina/log;

type User readonly & record {
    string email;
};

public function main(string... args) {
    // Email configuration
    string toEmail = "recipient@email.com";
    string subject = "Reminder: Record Your Finance Records";
    string body = "Dear User,\n\nThis is a friendly reminder to record your finance records for today.\n\nBest regards,\nYour Finance Team";

    json payload = {
        "to": toEmail,
        "subject": subject,
        "body": body
    };

    log:printInfo("Email sent successfully to: " + toEmail + "message: " + payload.toString() );
};

function getUsersFromDB() returns User[] {
    string usersApiEndpoint = "https://api.example.com/users";

    return [];
};
