<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <!-- Bootstrap CSS -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/styles/bootstrap.min.css">
	
	<!-- Custom CSS -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/styles/style.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/styles/responsive.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/styles/jquery.mCustomScrollbar.min.css">
</head>
<body class="bg-gray-100">
    <!-- Authentication Card -->
    <div class="min-h-screen flex flex-col sm:justify-center items-center pt-6 sm:pt-0 bg-gray-100">
        <!-- Logo -->
        <div>
            <img src="${pageContext.request.contextPath}/images/logo.png" alt="Logo" class="h-20 w-20">
        </div>

        <!-- Form Container -->
        <div class="w-full sm:max-w-md mt-6 px-6 py-4 bg-white shadow-md overflow-hidden sm:rounded-lg">
            <h1 class="text-xl font-bold text-gray-700 mb-6 text-center">Register</h1>
            <form action="${pageContext.request.contextPath}/register" method="POST">
                <!-- Name -->
                <div>
                    <label for="name" class="block font-medium text-sm text-gray-700">Name</label>
                    <input id="name" type="text" name="name" required
                        class="block mt-1 w-full border-gray-300 focus:border-blue-500 focus:ring focus:ring-blue-200 focus:ring-opacity-50 rounded-md shadow-sm">
                </div>

                <!-- Email -->
                <div class="mt-4">
                    <label for="email" class="block font-medium text-sm text-gray-700">Email</label>
                    <input id="email" type="email" name="email" required
                        class="block mt-1 w-full border-gray-300 focus:border-blue-500 focus:ring focus:ring-blue-200 focus:ring-opacity-50 rounded-md shadow-sm">
                </div>

                <!-- Password -->
                <div class="mt-4">
                    <label for="password" class="block font-medium text-sm text-gray-700">Password</label>
                    <input id="password" type="password" name="password" required
                        class="block mt-1 w-full border-gray-300 focus:border-blue-500 focus:ring focus:ring-blue-200 focus:ring-opacity-50 rounded-md shadow-sm">
                </div>

                <!-- Confirm Password -->
                <div class="mt-4">
                    <label for="password_confirmation" class="block font-medium text-sm text-gray-700">Confirm Password</label>
                    <input id="password_confirmation" type="password" name="password_confirmation" required
                        class="block mt-1 w-full border-gray-300 focus:border-blue-500 focus:ring focus:ring-blue-200 focus:ring-opacity-50 rounded-md shadow-sm">
                </div>

                <!-- Register Button -->
                <div class="flex items-center justify-between mt-6">
                    <p class="text-sm text-gray-600">
                        Already have an account? <a href="login.jsp" class="text-blue-600 hover:underline">Login</a>
                    </p>
                    <button type="submit"
                        class="ml-3 px-4 py-2 bg-blue-600 border border-transparent rounded-md font-semibold text-xs text-white uppercase tracking-widest hover:bg-blue-500 focus:outline-none focus:ring focus:ring-blue-200 active:bg-blue-600">
                        Register
                    </button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
