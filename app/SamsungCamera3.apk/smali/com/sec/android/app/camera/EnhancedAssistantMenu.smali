.class public Lcom/sec/android/app/camera/EnhancedAssistantMenu;
.super Ljava/lang/Object;
.source "EnhancedAssistantMenu.java"


# static fields
.field public static final ACTION_GALLERY:Ljava/lang/String; = "android.intent.action.switchgallery"

.field public static final ACTION_SWITCH_CAMERA:Ljava/lang/String; = "android.intent.action.switchcamera"

.field private static final ACTIVITY_NAME:Ljava/lang/String; = "ActivityName"

.field private static final ICON_NAME:Ljava/lang/String; = "IconName"

.field private static final MENU_GALLERY:Ljava/lang/String; = "Gallery"

.field private static final MENU_SWITCH_CAMERA:Ljava/lang/String; = "Switch camera"

.field private static final REGISTER:Ljava/lang/String; = "register"

.field private static final TAG:Ljava/lang/String; = "EnhancedAssistantMenu"


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActivityContext:Lcom/sec/android/app/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 2
    .param p1, "activity"    # Lcom/sec/android/app/camera/Camera;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/sec/android/app/camera/EnhancedAssistantMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 27
    iget-object v0, p0, Lcom/sec/android/app/camera/EnhancedAssistantMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/EnhancedAssistantMenu;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 28
    return-void
.end method

.method private getIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 72
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.switchcamera"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    const-string v1, "android.intent.action.switchgallery"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    return-object v0
.end method

.method private getMenuList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string v0, "Switch camera;Gallery;"

    return-object v0
.end method


# virtual methods
.method public addAssistantMenu()V
    .locals 3

    .prologue
    .line 48
    const-string v1, "EnhancedAssistantMenu"

    const-string v2, "addAssistantMenu"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 50
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "ActivityName"

    iget-object v2, p0, Lcom/sec/android/app/camera/EnhancedAssistantMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v1, "IconName"

    invoke-direct {p0}, Lcom/sec/android/app/camera/EnhancedAssistantMenu;->getMenuList()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v1, "register"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 53
    iget-object v1, p0, Lcom/sec/android/app/camera/EnhancedAssistantMenu;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->assistantMenuUpdate(Landroid/os/Bundle;)V

    .line 54
    return-void
.end method

.method public registerEAM(Landroid/content/BroadcastReceiver;)V
    .locals 2
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 31
    const-string v0, "EnhancedAssistantMenu"

    const-string v1, "registerEAM"

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-virtual {p0}, Lcom/sec/android/app/camera/EnhancedAssistantMenu;->addAssistantMenu()V

    .line 33
    iget-object v0, p0, Lcom/sec/android/app/camera/EnhancedAssistantMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Lcom/sec/android/app/camera/EnhancedAssistantMenu;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 34
    return-void
.end method

.method public removeAssistantMenu()V
    .locals 3

    .prologue
    .line 57
    const-string v1, "EnhancedAssistantMenu"

    const-string v2, "removeAssistantMenu"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 59
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "ActivityName"

    iget-object v2, p0, Lcom/sec/android/app/camera/EnhancedAssistantMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v1, "IconName"

    invoke-direct {p0}, Lcom/sec/android/app/camera/EnhancedAssistantMenu;->getMenuList()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v1, "register"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 62
    iget-object v1, p0, Lcom/sec/android/app/camera/EnhancedAssistantMenu;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->assistantMenuUpdate(Landroid/os/Bundle;)V

    .line 63
    return-void
.end method

.method public unregisterEAM(Landroid/content/BroadcastReceiver;)V
    .locals 3
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 37
    const-string v1, "EnhancedAssistantMenu"

    const-string v2, "unregisterEAM"

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/EnhancedAssistantMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, p1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    invoke-virtual {p0}, Lcom/sec/android/app/camera/EnhancedAssistantMenu;->removeAssistantMenu()V

    .line 45
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "EnhancedAssistantMenu"

    const-string v2, "IllegalArgumentException : unregiseter EAM"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
