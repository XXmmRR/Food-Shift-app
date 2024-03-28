
class ApiConstants {
  static String baseUrl = 'localhost:8000/';
  static String loginUrl = '/auth/login';
  static String refreshUrl = '/auth/refresh';
  static String registerUrl = '/register';
  static String forgotPasswordUrl = '/register/forgot-password';
  static String resetPasswordUrl = '/register/reset-password/{token}';
  static String requestVerifyEmail = '/mail/verify';
  static String veifyEmail = '/mail/verify/{token}';
  static String getOrCreateInstituionList = '/institutions';
  static String updateInstitution = '/institutions/{institution_name}';
  static String setInstitutionImage = '/institutions/{institution_name}/set-image';
  static String deleteInstitution = '/institutions/{institution_name}';
  static String tagUrl =  '/tags';
  static String addressGetOrCreate = '/address';
  static String deleteAddress = '/address/{id}';
  static String getOrCreateFood = '/food/{institution_name}';
  static String updateFood = '/food/update/{food_id}';
  static String setFoodImage = '/food/{food_id}/set-image';
  static String deleteFood = '/food/delete/{food_id}';
  static String getOrCreateCategory = '/category';
  static String deleteCategory = '/category/{category_name}';
  static String getOrCreateRating = '/rating/{institution_name}';
  static String createOrder = '/order/{institution_name}';
}