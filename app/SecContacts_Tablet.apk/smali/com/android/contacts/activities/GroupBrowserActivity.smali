.class public Lcom/android/contacts/activities/GroupBrowserActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "GroupBrowserActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GroupBrowserActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 35
    return-void
.end method

.method private configureContentView(ZLandroid/os/Bundle;)V
    .locals 1
    .param p1, "createContentView"    # Z
    .param p2, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    if-eqz p1, :cond_0

    .line 57
    const v0, 0x7f040141

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 59
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x400

    .line 39
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/contacts/activities/GroupBrowserActivity;->configureContentView(ZLandroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 44
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 49
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/activities/GroupBrowserActivity;->configureContentView(ZLandroid/os/Bundle;)V

    .line 50
    return-void
.end method
