import pymysql

try:
    cnx = pymysql.connect(host='localhost', user='root',
                          password='mypass',
                          db='restaurant_search', charset='utf8mb4',
                          cursorclass=pymysql.cursors.DictCursor)

except pymysql.err.OperationalError as e1:
    print('Error: %d: %s' % (e1.args[0], e1.args[1]))

try:

    L = ['admin', 'member', 'restaurant']
    print(L)

    while True:
        user_type = input("Choose one of the three roles from above: ")

        if len(user_type) == 0:
            print('Error: Role cannot be blank')
            continue

        if user_type.lower() in L:
            print('Role is in list')
            break

        else:
            print('Error: Role not found')
            continue

    if user_type == 'admin' or user_type.lower() == 'admin':
        while True:

            username = input("Enter username: ")

            if len(username) == 0:
                print('Error: username cannot be blank.')
                continue

            if username.lower() == 'rootdb123':
                print('Correct Username')
                break

            else:
                print('Error: Incorrect Username')
                continue

        while True:

            password = input("Enter password: ")

            if len(password) == 0:
                print('Error: password cannot be blank.')
                continue

            if password.lower() == '32rest00':
                print('Correct Password')
                break

            else:
                print('Error: Incorrect Password')
                continue

        X = ['member', 'restaurant']
        print(X)

        while True:
            delete_what = input("Choose one of the above to modify: ")

            if len(delete_what) == 0:
                print('Error: Input cannot be blank')
                continue

            if delete_what.lower() in X:
                print('Group is in list')
                break

            else:
                print('Error: Group not found')
                continue

        if delete_what == 'member' or delete_what.lower() == 'member':
            c1 = cnx.cursor()
            c1.execute("Select * From member")
            rows = c1.fetchall()
            for row in rows:
                print(row)
            c1.close()

            c3 = cnx.cursor()
            stmt_select = "select ID from member"
            c3.execute(stmt_select)
            rows = c3.fetchall()
            Y = []
            for row in rows:
                Y.append(str(row['ID']))
            c3.close()

            while True:
                delete_mem = input("Enter Member ID to delete: ")

                if delete_mem in Y:
                    print('ID found and deleted')
                    break

                else:
                    print('Error: ID not found')
                    continue

            c2 = cnx.cursor()
            args = int(delete_mem)
            c2.callproc("delete_member", [args])
            cnx.commit()
            c2.close()

        if delete_what == 'restaurant' or delete_what.lower() == 'restaurant':
            c4 = cnx.cursor()
            c4.callproc("view_rest")
            rows = c4.fetchall()
            for row in rows:
                print(row)
            c4.close()

            c5 = cnx.cursor()
            c5.execute("select ID from restaurant")
            rows = c5.fetchall()
            Z = []
            for row in rows:
                Z.append(row['ID'])
            c5.close()

            while True:
                delete_rest = int(input("Enter Restaurant ID to delete: "))

                if delete_rest in Z:
                    print('ID found and deleted')
                    break

                else:
                    print('Error: ID not found')
                    continue

            c6 = cnx.cursor()
            c6.callproc("delete_rest", [delete_rest])
            cnx.commit()
            c6.close()

    if user_type == 'member' or user_type.lower() == 'member':

        c7 = cnx.cursor()
        c7.execute("select ID from member")
        rows = c7.fetchall()
        W = []
        for row in rows:
            W.append(str(row['ID']))
        c7.close()

        while True:
            print("If first time user put 'new' for Member ID.")
            member_id = input("Enter member ID: ")

            if member_id in W or member_id == 'new' or member_id.lower() == 'new':
                print('ID found')
                break

            else:
                print('Error: ID not found')
                continue

        if member_id == 'new':
            print("Enter name to be associated with account, once you are added successfully you will be given "
                  "an ID that you need to use for future logins.")
            new_name = input("Enter name: ")

            c8 = cnx.cursor()
            c8.callproc("add_member", [new_name])
            rows = c8.fetchall()
            for row in rows:
                print(row)
            cnx.commit()
            c8.close()

        if member_id in W:
            A = ['1', '2', '3', '4', '5', '6']

            while True:
                print("Enter the corresponding number for action you would like to perform: \n"
                      "1 = search on criteria, \n"
                      "2 = view all restaurants, \n"
                      "3 = search on restaurant, \n"
                      "4 = Review, \n"
                      "5 = Restaurant list, \n"
                      "6 = Update account")
                member_action = input("Enter number of action you would like to perform: ")

                if member_action in A:
                    print('valid action')
                    break

                else:
                    print('invalid action')
                    continue

            if member_action == "1":
                while True:
                    B = ['1', '2', '3', '4', '5']
                    print("Enter the corresponding number for criteria you would like to search on: \n"
                          "1 = cuisine, \n"
                          "2 = distance, \n"
                          "3 = price range, \n"
                          "4 = husky, \n"
                          "5 = rating")
                    member_search = input("Enter number of criteria you would like to search: ")

                    if member_action in B:
                        print('valid search')
                        break

                    else:
                        print('invalid search')
                        continue

                if member_search == "1":
                    mem_cuisine = input("Enter cuisine type: ")

                    c9 = cnx.cursor()
                    c9.callproc("check_cusine", [mem_cuisine])
                    rows = c9.fetchall()
                    for row in rows:
                        print(row)
                    c9.close()

                if member_search == "2":
                    mem_dist = input("Enter distance in miles (as decimal): ")

                    c19 = cnx.cursor()
                    c19.callproc("check_distance", [mem_dist])
                    rows = c19.fetchall()
                    for row in rows:
                        print(row)
                    c19.close()

                if member_search == "3":
                    while True:
                        print("Enter price range as a value between '$' and '$$$$'")
                        mem_price = input("Enter price range: ")

                        if 4 >= len(mem_price) > 0:
                            print('valid entry')
                            break

                        else:
                            print('Error: invalid entry')
                            continue

                    c20 = cnx.cursor()
                    c20.callproc("check_price", [mem_price])
                    rows = c20.fetchall()
                    for row in rows:
                        print(row)
                    c20.close()

                if member_search == "4":
                    while True:
                        print("Enter accept husky as 0 = 'no' and 1 = 'yes'")
                        mem_husky = input("Enter accept husky: ")

                        if mem_husky == "1" or mem_husky == "0":
                            print('valid entry')
                            break

                        else:
                            print('Error: invalid entry')
                            continue

                    c21 = cnx.cursor()
                    c21.callproc("check_husky", [mem_husky])
                    rows = c21.fetchall()
                    for row in rows:
                        print(row)
                    c21.close()

                if member_search == "5":
                    while True:
                        print("Enter rating as a decimal from 1.0 (worst) to 5.0(best)")
                        mem_rating = input("Enter rating: ")

                        if 5.0 >= float(mem_rating) > 1.0:
                            print('valid entry')
                            break

                        else:
                            print('Error: invalid entry')
                            continue

                    c22 = cnx.cursor()
                    c22.callproc("search_rating", [mem_rating])
                    rows = c22.fetchall()
                    for row in rows:
                        print(row)
                    c22.close()

            if member_action == "2":
                c23 = cnx.cursor()
                c23.callproc("view_rest")
                rows = c23.fetchall()
                for row in rows:
                    print(row)
                c23.close()

            if member_action == "3":
                c24 = cnx.cursor()
                c24.execute("select name from restaurant")
                rows = c24.fetchall()
                G = []
                for row in rows:
                    G.append(row['name'].lower())
                c24.close()

                while True:
                    F = ['1', '2', '3', '4', '5']
                    mem_rest = input("Enter the restaurant name you would like to search: ")
                    print("Enter one the corresponding number for info you would like on entered restaurant \n"
                          "1 = reviews, \n"
                          "2 = social media, \n"
                          "3 = delivery, \n"
                          "4 = location, \n"
                          "5 = specifications")
                    mem_search_rest = input("Enter criteria you would like to view on restaurant: ")

                    if mem_rest.lower() in G and mem_search_rest in F:
                        print('valid search')
                        break

                    if mem_rest not in G:
                        print('Error: Restaurant does not exist in current system')

                    else:
                        print('invalid search')
                        continue

                if mem_search_rest == "1":

                    c25 = cnx.cursor()
                    g = [mem_rest]
                    c25.callproc("view_rest_reviews", g)
                    rows = c25.fetchall()
                    for row in rows:
                        print(row)
                    if len(rows) == 0:
                        print("No reviews to return")
                    c25.close()

                if mem_search_rest == "2":

                    c26 = cnx.cursor()
                    h = [mem_rest, member_id]
                    c26.callproc("view_socials", h)
                    rows = c26.fetchall()
                    for row in rows:
                        print(row)
                    if len(rows) == 0:
                        print("No socials to return")
                    cnx.commit()
                    c26.close()

                if mem_search_rest == "3":
                    c27 = cnx.cursor()
                    i = [mem_rest, member_id]
                    c27.callproc("view_delivery", i)
                    rows = c27.fetchall()
                    for row in rows:
                        print(row)
                    if len(rows) == 0:
                        print("No delivery info to return")
                    cnx.commit()
                    c27.close()

                if mem_search_rest == "4":
                    c28 = cnx.cursor()
                    j = [mem_rest, member_id]
                    c28.callproc("view_location", j)
                    rows = c28.fetchall()
                    for row in rows:
                        print(row)
                    if len(rows) == 0:
                        print("No location info to return")
                    cnx.commit()
                    c28.close()

                if mem_search_rest == "5":
                    c29 = cnx.cursor()
                    k = [mem_rest, member_id]
                    c29.callproc("view_specs", k)
                    rows = c29.fetchall()
                    for row in rows:
                        print(row)
                    if len(rows) == 0:
                        print("No specification info to return")
                    cnx.commit()
                    c29.close()

            if member_action == "4":
                while True:
                    I = ["add", "delete"]
                    print(I)
                    mem_review = input("Choose one of the above actions to complete on your reviews: ")

                    if mem_review.lower() in I:
                        print("valid action")
                        break

                    else:
                        print('invalid action')
                        continue

                if mem_review.lower() == "add":
                    while True:
                        c30 = cnx.cursor()
                        c30.execute("select name from restaurant")
                        rows = c30.fetchall()
                        J = []
                        for row in rows:
                            J.append(row['name'].lower())
                        c30.close()

                        print("Fill in the following fields to leave a review for a restaurant")
                        print("Enter rating as a decimal from 1.0 (worst) to 5.0(best)")
                        a_rev_rating = input("Enter rating: ")
                        a_rev_comment = input("Enter comment: ")
                        a_rev_rest = input("Enter restaurant name: ")

                        if 5.0 >= float(a_rev_rating) > 1.0 and a_rev_rest.lower() in J:
                            print('valid entry')
                            break

                        if a_rev_rest.lower() not in J:
                            print('Error: Not an existing restaurant')
                            continue

                        else:
                            print('Error: invalid entry')
                            continue

                    c31 = cnx.cursor()
                    l = [a_rev_rating, a_rev_comment, a_rev_rest, member_id]
                    c31.callproc("add_review", l)
                    rows = c31.fetchall()
                    for row in rows:
                        print(row)
                    cnx.commit()
                    c31.close()

                if mem_review.lower() == "delete":
                    delete_rev_rating = input("Enter rating of review you would like to delete from your reviews: ")
                    delete_rev_rest = input("Enter restaurant of review you would like to delete from your "
                                            "reviews: ")

                    c35 = cnx.cursor()
                    m = [delete_rev_rating, delete_rev_rest, member_id]
                    c35.callproc("delete_review", m)
                    cnx.commit()
                    print("If matching review found, it has been deleted")
                    c35.close()

            if member_action == "5":

                while True:
                    O = ['1', '2', '3', '4']
                    print("Enter corresponding number for action you would like to do to personalized "
                          "restaurant list: \n"
                          "1 = view all my restaurant list, \n"
                          "2 = add new restaurant list, \n"
                          "3 = add restaurants to existing restaurant list, \n"
                          "4 = delete restaurant list")
                    mem_list = input("Enter criteria you would like to view on restaurant: ")

                    if mem_list in O:
                        print('valid input')
                        break

                    else:
                        print('invalid input')
                        continue

                if mem_list == "1":

                    c36 = cnx.cursor()
                    c36.callproc("view_list", [member_id])
                    rows = c36.fetchall()
                    for row in rows:
                        print(row)
                    if len(rows) == 0:
                        print("No lists to return")
                    c36.close()



                if mem_list == "2":
                    new_list_name = input("Enter a name for your new restaurant list: ")


                    c37 = cnx.cursor()
                    p = [new_list_name, member_id]
                    c37.callproc("add_rest_list", p)
                    cnx.commit()
                    print("Restaurant list created")
                    c37.close()

                c38 = cnx.cursor()
                c38.execute("select name from restaurantlist where creator = " + member_id)
                rows = c38.fetchall()
                P = []
                for row in rows:
                    P.append(row['name'].lower())
                c38.close()

                if mem_list == "3":

                    while True:

                        c39 = cnx.cursor()
                        c39.execute("select name from restaurant")
                        rows = c39.fetchall()
                        S = []
                        for row in rows:
                            S.append(row['name'].lower())
                        c39.close()

                        add_rest_list = input("Enter name of your restaurant list you would like "
                                              "to add a restaurant to: ")
                        add_rest_name = input("Enter name of restaurant you would like to add to that list: ")

                        if add_rest_list.lower() in P and add_rest_name.lower() in S:
                            print("valid input")
                            break

                        if add_rest_list not in P:
                            print("Error: Trying to add to list that doesn't exist")

                        else:
                            print("Error: Trying to add restaurant that doesn't exist")

                    c40 = cnx.cursor()
                    s = [add_rest_list, add_rest_name, member_id]
                    c40.callproc("add_restaurant_list", s)
                    cnx.commit()
                    print("Restaurant added to your given list")
                    c40.close()

                if mem_list == "4":
                    while True:
                        delete_list = input("Enter name of list you would like to delete: ")

                        if delete_list.lower() in P:
                            print("List found and deleted")
                            break

                        else:
                            print("Error: Trying to delete list that doesn't exist")
                            continue

                    c41 = cnx.cursor()
                    u = [delete_list, member_id]
                    c41.callproc("delete_rest_list", u)
                    cnx.commit()
                    c41.close()


            if member_action == "6":
                print("Fill out following fields to associate an address with your account")

                while True:
                    member_street = input("Enter your street: ")
                    member_city = input("Enter your city: ")
                    member_zip = input("Enter your zip code: ")
                    member_state = input("Enter your state abbreviation (ex: MA): ")

                    if len(member_zip) == 5 and len(member_state) == 2:
                        print('valid input')
                        break

                    else:
                        print('invalid zip or state')
                        continue

                c10 = cnx.cursor()
                stuff = [member_id, member_street, member_city, member_zip, member_state]
                c10.callproc("update_member_address", stuff)
                rows = c10.fetchall()
                for row in rows:
                    print(row)
                cnx.commit()
                print('Update complete')
                c10.close()

    if user_type == 'restaurant' or user_type.lower() == 'restaurant':
        c11 = cnx.cursor()
        c11.execute("select ID from restaurant")
        rows = c11.fetchall()
        Z = []
        for row in rows:
            Z.append(str(row['ID']))
        c11.close()

        while True:
            restaurant_id = input("Enter restaurant ID: ")

            if restaurant_id in Z:
                print('ID found')
                break

            else:
                print('Error: ID not found')
                continue

        C = ['1', '2']

        while True:
            print("Enter the corresponding number for action you would like to perform: \n"
                  "1 = View reviews, \n"
                  "2 = Update my information")
            rest_action = input("Enter number of the action you would like to perform: ")

            if rest_action in C:
                print('valid action')
                break

            else:
                print('Error: invalid action')
                continue

        if rest_action == '1':
            rest_rev_name = input('Enter restaurant name you would like to view reviews for: ')

            c12 = cnx.cursor()
            c12.callproc("view_rest_reviews", [rest_rev_name])
            rows = c12.fetchall()
            for row in rows:
                print(row)
            if len(rows) == 0:
                print("No reviews to return")
            c12.close()

        if rest_action == '2':
            while True:
                D = ['1', '2']
                print("Enter the corresponding number for criteria you would like to update: \n"
                      "1 = specifications, \n"
                      "2 = website")
                rest_update = input("Enter number of criteria you would like to update: ")

                if rest_update in D:
                    print('valid entry')
                    break

                else:
                    print('Error: invalid entry')
                    continue

            if rest_update == "1":
                while True:
                    E = ['1', '2', '3', '4', '5']
                    print("Enter the corresponding number for specifications you would like to update: \n"
                          "1 = cuisine, \n"
                          "2 = distance, \n"
                          "3 = price range, \n"
                          "4 = husky, \n"
                          "5 = chars")
                    rest_criteria = input("Enter number of specification you would like to update: ")

                    if rest_update in E:
                        print('valid entry')
                        break

                    else:
                        print('Error: invalid entry')
                        continue

                if rest_criteria == "1":
                    up_cus = input("Enter the cuisine type you would like to update to (ex: Thai, fast food): ")

                    c13 = cnx.cursor()
                    a = [up_cus, restaurant_id]
                    c13.callproc("update_cusine", a)
                    rows = c13.fetchall()
                    for row in rows:
                        print(row)
                    cnx.commit()
                    print('Update complete')
                    c13.close()

                if rest_criteria == "2":
                    up_dist = input("Enter updated distance from Northeastern in miles (as a decimal): ")

                    c14 = cnx.cursor()
                    b = [up_dist, restaurant_id]
                    c14.callproc("update_distance", b)
                    rows = c14.fetchall()
                    for row in rows:
                        print(row)
                    cnx.commit()
                    print('Update complete')
                    c14.close()

                if rest_criteria == "3":
                    while True:
                        print("Enter new price range as a value between '$' and '$$$$'")
                        up_price = input("Enter updated price range: ")

                        if 4 >= len(up_price) > 0:
                            print('valid entry')
                            break

                        else:
                            print('Error: invalid entry')
                            continue

                    c15 = cnx.cursor()
                    c = [up_price, restaurant_id]
                    c15.callproc("update_price", c)
                    rows = c15.fetchall()
                    for row in rows:
                        print(row)
                    cnx.commit()
                    print('Update complete')
                    c15.close()

                if rest_criteria == "4":
                    while True:
                        print("Enter if you accept husky as 0 = 'no' and 1 = 'yes'")
                        up_husky = input("Enter updated accept husky: ")

                        if up_husky == "1" or up_husky == "0":
                            print('valid entry')
                            break

                        else:
                            print('Error: invalid entry')
                            continue

                    c16 = cnx.cursor()
                    d = [up_husky, restaurant_id]
                    c16.callproc("update_husky", d)
                    rows = c16.fetchall()
                    for row in rows:
                        print(row)
                    cnx.commit()
                    print('Update complete')
                    c16.close()

                if rest_criteria == "5":
                    up_chars = input("Enter updated characteristics of your restaurant: ")

                    c17 = cnx.cursor()
                    e = [up_chars, restaurant_id]
                    c17.callproc("update_chars", e)
                    rows = c17.fetchall()
                    for row in rows:
                        print(row)
                    cnx.commit()
                    print('Update complete')
                    c17.close()

            if rest_update == '2':
                up_web = input("Enter updated website of your restaurant: ")

                c18 = cnx.cursor()
                f = [up_web, restaurant_id]
                c18.callproc("add_website", f)
                rows = c18.fetchall()
                for row in rows:
                    print(row)
                cnx.commit()
                print('Update complete')
                c18.close()


















except pymysql.Error as e:
    print('Error: %d: %s' % (e.args[0], e.args[1]))


finally:
    cnx.close()
