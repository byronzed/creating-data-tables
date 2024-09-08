-- Query 1: Select all users who are born between January 1, 2000 and December 31, 2004.
SELECT * 
FROM Users 
WHERE DateOfBirth BETWEEN '2000-01-01' AND '2004-12-31';

-- Query 2: Select all the posts written by the user with a user_id of 4.
SELECT * 
FROM Posts 
WHERE PostedBy = 4;

-- Query 3: Select all the group names existing in the database.
-- Assuming there is a Groups table with a column GroupName
SELECT GroupName 
FROM Groups;

-- Query 4: Select all the group membership requests made by the user with a user_id of 2.
-- Assuming there is a GroupMembershipRequests table with columns UserID and RequestStatus
SELECT * 
FROM GroupMembershipRequests 
WHERE UserID = 2;

-- Query 5: Select all the friends of the user with a user_id of 2.
-- Assuming there is a Friends table with columns UserID1 and UserID2 representing friendships
SELECT UserID2 AS FriendID 
FROM Friends 
WHERE UserID1 = 2
UNION
SELECT UserID1 AS FriendID 
FROM Friends 
WHERE UserID2 = 2;

-- Query 6: Select all the friend requests that the user with a user_id of 1 has sent. The friend request can either be accepted or not yet accepted.
-- Assuming there is a FriendRequests table with columns SenderID, ReceiverID, and RequestStatus
SELECT * 
FROM FriendRequests 
WHERE SenderID = 1;

-- Query 7: Select all the posts visible only for the group with a group_id of 2.
-- Assuming there is a Posts table with a GroupID column indicating the group visibility
SELECT * 
FROM Posts 
WHERE GroupID = 2 AND IsVisible = TRUE;

-- Query 8: Select all the group membership requests from the group with a group_id of 2 that are not yet accepted.
-- Assuming there is a GroupMembershipRequests table with columns GroupID and RequestStatus
SELECT * 
FROM GroupMembershipRequests 
WHERE GroupID = 2 AND RequestStatus = 'Pending';