package fit.iuh.se.bai2.repository;

/**
 * Package: fit.iuh.se.bai2.repository
 * Author: thinh
 */

import fit.iuh.se.bai2.model.User;
import java.util.ArrayList;
import java.util.List;

public class UserRepository {
    private static List<User> users = new ArrayList<>();

    public static void addUser(User user) {
        users.add(user);
    }

    public static List<User> getAllUsers() {
        return users;
    }
}

