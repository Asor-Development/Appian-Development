# Validation
**You can configure validations on the form's components to ensure the data users enter doesn't contain preventable mistakes.** 
___________________________________________________

**A custom validation that limits the maximum number of characters in a field**
```
if(
 len(tostring(**Variable goes here**))<=15,
 null,
 "The phone number cannot exceed 15 digits"
)
```
 