<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <!-- Bootstrap CSS -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/styles/bootstrap.min.css">
	
	<!-- Custom CSS -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/styles/style.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/styles/responsive.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/styles/jquery.mCustomScrollbar.min.css">
	
	<script src="scripts/app.js"></script>
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
            <!-- Form -->
            <form action="${pageContext.request.contextPath}/login" method="POST">
                <!-- Email -->
                <div>
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

                <!-- Remember Me -->
                <div class="block mt-4">
                    <label for="remember_me" class="flex items-center">
                        <input id="remember_me" type="checkbox" name="remember"
                            class="rounded border-gray-300 text-blue-600 shadow-sm focus:border-blue-300 focus:ring focus:ring-blue-200 focus:ring-opacity-50">
                        <span class="ml-2 text-sm text-gray-600">Remember me</span>
                    </label>
                </div>

                <!-- Forgot Password and Submit -->
                <div class="flex items-center justify-between mt-4">
                    <a href="${pageContext.request.contextPath}/forgot-password.jsp" class="underline text-sm text-gray-600 hover:text-gray-900">
                        Forgot your password?
                    </a>
                    <button type="submit"
                        class="ml-3 px-4 py-2 bg-blue-600 border border-transparent rounded-md font-semibold text-xs text-white uppercase tracking-widest hover:bg-blue-500 focus:outline-none focus:ring focus:ring-blue-200 active:bg-blue-600">
                        Log in
                    </button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
