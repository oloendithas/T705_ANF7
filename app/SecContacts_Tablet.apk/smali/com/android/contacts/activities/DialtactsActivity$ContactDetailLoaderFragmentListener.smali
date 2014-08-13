.class Lcom/android/contacts/activities/DialtactsActivity$ContactDetailLoaderFragmentListener;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/DialtactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactDetailLoaderFragmentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/DialtactsActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/activities/DialtactsActivity;)V
    .locals 0

    .prologue
    .line 3335
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity$ContactDetailLoaderFragmentListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/DialtactsActivity;Lcom/android/contacts/activities/DialtactsActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/activities/DialtactsActivity;
    .param p2, "x1"    # Lcom/android/contacts/activities/DialtactsActivity$1;

    .prologue
    .line 3335
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity$ContactDetailLoaderFragmentListener;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    return-void
.end method


# virtual methods
.method public onContactNotFound()V
    .locals 0

    .prologue
    .line 3339
    return-void
.end method

.method public onDeleteRequested(Landroid/net/Uri;)V
    .locals 0
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 3369
    return-void
.end method

.method public onDetailsLoaded(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 2
    .param p1, "result"    # Lcom/android/contacts/ContactLoader$Result;

    .prologue
    .line 3343
    if-nez p1, :cond_1

    .line 3345
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$ContactDetailLoaderFragmentListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$3800(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/detail/ContactDetailLayoutController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3346
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$ContactDetailLoaderFragmentListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$3800(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/detail/ContactDetailLayoutController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->showEmptyState()V

    .line 3363
    :cond_0
    :goto_0
    return-void

    .line 3352
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$ContactDetailLoaderFragmentListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$3900(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/activities/DialtactsActivity$ContactDetailLoaderFragmentListener$1;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/activities/DialtactsActivity$ContactDetailLoaderFragmentListener$1;-><init>(Lcom/android/contacts/activities/DialtactsActivity$ContactDetailLoaderFragmentListener;Lcom/android/contacts/ContactLoader$Result;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onEditRequested(Landroid/net/Uri;)V
    .locals 0
    .param p1, "contactLookupUri"    # Landroid/net/Uri;

    .prologue
    .line 3366
    return-void
.end method
