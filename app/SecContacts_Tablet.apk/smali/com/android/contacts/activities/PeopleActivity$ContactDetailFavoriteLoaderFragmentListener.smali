.class Lcom/android/contacts/activities/PeopleActivity$ContactDetailFavoriteLoaderFragmentListener;
.super Ljava/lang/Object;
.source "PeopleActivity.java"

# interfaces
.implements Lcom/android/contacts/detail/ContactLoaderFragment$FavoriteLoaderFragmentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/PeopleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactDetailFavoriteLoaderFragmentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/PeopleActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/activities/PeopleActivity;)V
    .locals 0

    .prologue
    .line 2997
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactDetailFavoriteLoaderFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/activities/PeopleActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/activities/PeopleActivity;
    .param p2, "x1"    # Lcom/android/contacts/activities/PeopleActivity$1;

    .prologue
    .line 2997
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PeopleActivity$ContactDetailFavoriteLoaderFragmentListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    return-void
.end method


# virtual methods
.method public onContactNotFound()V
    .locals 0

    .prologue
    .line 3002
    return-void
.end method

.method public onDetailsLoaded(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 2
    .param p1, "result"    # Lcom/android/contacts/ContactLoader$Result;

    .prologue
    .line 3006
    if-nez p1, :cond_0

    .line 3008
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$ContactDetailFavoriteLoaderFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFavoriteLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$3300(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/detail/ContactDetailLayoutController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->showEmptyState()V

    .line 3035
    :goto_0
    return-void

    .line 3016
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$ContactDetailFavoriteLoaderFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    # getter for: Lcom/android/contacts/activities/PeopleActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$3200(Lcom/android/contacts/activities/PeopleActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/activities/PeopleActivity$ContactDetailFavoriteLoaderFragmentListener$1;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/activities/PeopleActivity$ContactDetailFavoriteLoaderFragmentListener$1;-><init>(Lcom/android/contacts/activities/PeopleActivity$ContactDetailFavoriteLoaderFragmentListener;Lcom/android/contacts/ContactLoader$Result;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
