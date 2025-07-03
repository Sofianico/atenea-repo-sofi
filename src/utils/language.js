export const getBrowserLanguage = () => {
  if (typeof window !== "undefined" && typeof navigator !== "undefined") {
    return navigator.language.split("-")[0];
  }
  return "esp"; 
};