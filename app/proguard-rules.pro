# Optimize and remove unused code
-optimizationpasses 5
-dontusemixedcaseclassnames
-dontskipnonpubliclibraryclasses
-dontskipnonpubliclibraryclassmembers
-keepattributes Signature,RuntimeVisibleAnnotations,AnnotationDefault

# Keep classes and methods with @Override annotation
-keepclasseswithmembers class * {
    @java.lang.Override <methods>;
}

# Keep public classes with a public constructor
-keepclasseswithmembers public class * {
    public <init>(android.content.Context, android.util.AttributeSet);
}

# Keep all classes in the application, along with their 'onClick' methods
-keepclasseswithmembers class * {
    public *;
}

# Keep custom views that have the 'onClick' method
-keepclasseswithmembers class * {
    void onClick*(...);
}

# Keep the entry point class
-keep class com.example.dummyapp.MainActivity {
    public *;
}

# Keep the names of classes that are used in the AndroidManifest.xml
-keepnames class com.example.dummyapp.** { *; }

# Keep the generated BuildConfig class that is used to determine build configuration
-keep class com.example.dummyapp.BuildConfig {
    public *;
}

# Avoid obfuscating the Parcelable implementation
-keep class * implements android.os.Parcelable {
  public static final android.os.Parcelable$Creator *;
}

# Keep the annotations that are used for ButterKnife
-keep @interface butterknife.* {
  *;
}

# Keep the class names that are used with ButterKnife
-keepclassmembers class ** {
  @butterknife.* <fields>;
}

# Preserve the compatibility with Jackson JSON library
-keepattributes *Annotation*
-dontwarn org.codehaus.**
-keep class org.codehaus.** { *; }
-keepnames class com.fasterxml.jackson.** { *; }

# Keep the classes for Gson library
-keep class sun.misc.Unsafe { *; }
-keep class com.google.gson.examples.android.model.** { *; }

# Keep the Parcelable classes (common pattern with Android)
-keep class * implements android.os.Parcelable {
  public static final android.os.Parcelable$Creator *;
}

# Keep the Serializable classes (common pattern with Android)
-keep class * implements java.io.Serializable { *; }

# Keep the application's main package
-keep class com.example.dummyapp.** { *; }
