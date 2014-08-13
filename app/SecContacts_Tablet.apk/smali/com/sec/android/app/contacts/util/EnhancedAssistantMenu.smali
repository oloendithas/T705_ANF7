.class public Lcom/sec/android/app/contacts/util/EnhancedAssistantMenu;
.super Ljava/lang/Object;
.source "EnhancedAssistantMenu.java"


# static fields
.field private static final ACTIVITY_NAME:Ljava/lang/String; = "ActivityName"

.field public static final ALL:Ljava/lang/String; = "com.android.contacts.activities.PeopleActivity.All"

.field public static final DELETE:Ljava/lang/String; = "com.android.contacts.activities.PeopleActivity.Delete"

.field public static final EDIT:Ljava/lang/String; = "com.android.contacts.activities.PeopleActivity.Edit"

.field public static final FAVOURITES:Ljava/lang/String; = "com.android.contacts.activities.PeopleActivity.Favourites"

.field private static final ICON_NAME:Ljava/lang/String; = "IconName"

.field public static final MENU_CONTACTS:Ljava/lang/String; = "Contacts"

.field public static final MENU_DELETE:Ljava/lang/String; = "Delete"

.field public static final MENU_EDIT:Ljava/lang/String; = "Edit"

.field public static final MENU_FAVOURITES:Ljava/lang/String; = "Favourites"

.field public static final MENU_PHONE:Ljava/lang/String; = "Phone"

.field public static final PHONE:Ljava/lang/String; = "com.android.contacts.activities.PeopleActivity.Phone"

.field private static final REGISTER:Ljava/lang/String; = "register"


# instance fields
.field private isRegistered:Z

.field private isUnRegistered:Z

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/util/EnhancedAssistantMenu;->isRegistered:Z

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/util/EnhancedAssistantMenu;->isUnRegistered:Z

    .line 34
    iput-object p1, p0, Lcom/sec/android/app/contacts/util/EnhancedAssistantMenu;->mActivity:Landroid/app/Activity;

    .line 35
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/EnhancedAssistantMenu;->mActivity:Landroid/app/Activity;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/sec/android/app/contacts/util/EnhancedAssistantMenu;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 36
    return-void
.end method


# virtual methods
.method public registerEAM(Landroid/content/BroadcastReceiver;Ljava/lang/String;Landroid/content/IntentFilter;)V
    .locals 4
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "menuList"    # Ljava/lang/String;
    .param p3, "filter"    # Landroid/content/IntentFilter;

    .prologue
    const/4 v3, 0x1

    .line 39
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/util/EnhancedAssistantMenu;->isUnRegistered:Z

    if-eqz v1, :cond_0

    .line 40
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 41
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "ActivityName"

    iget-object v2, p0, Lcom/sec/android/app/contacts/util/EnhancedAssistantMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v1, "IconName"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v1, "register"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 44
    iget-object v1, p0, Lcom/sec/android/app/contacts/util/EnhancedAssistantMenu;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->assistantMenuUpdate(Landroid/os/Bundle;)V

    .line 45
    iget-object v1, p0, Lcom/sec/android/app/contacts/util/EnhancedAssistantMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, p1, p3}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 46
    iput-boolean v3, p0, Lcom/sec/android/app/contacts/util/EnhancedAssistantMenu;->isRegistered:Z

    .line 47
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/util/EnhancedAssistantMenu;->isUnRegistered:Z

    .line 49
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public unregisterEAM(Landroid/content/BroadcastReceiver;)V
    .locals 4
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    const/4 v3, 0x0

    .line 52
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/util/EnhancedAssistantMenu;->isRegistered:Z

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/sec/android/app/contacts/util/EnhancedAssistantMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, p1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 54
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 55
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "ActivityName"

    iget-object v2, p0, Lcom/sec/android/app/contacts/util/EnhancedAssistantMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v1, "register"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 57
    iget-object v1, p0, Lcom/sec/android/app/contacts/util/EnhancedAssistantMenu;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->assistantMenuUpdate(Landroid/os/Bundle;)V

    .line 58
    iput-boolean v3, p0, Lcom/sec/android/app/contacts/util/EnhancedAssistantMenu;->isRegistered:Z

    .line 59
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/util/EnhancedAssistantMenu;->isUnRegistered:Z

    .line 61
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method
