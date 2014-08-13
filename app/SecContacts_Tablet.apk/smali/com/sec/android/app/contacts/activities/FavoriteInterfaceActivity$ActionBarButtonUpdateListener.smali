.class final Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$ActionBarButtonUpdateListener;
.super Ljava/lang/Object;
.source "FavoriteInterfaceActivity.java"

# interfaces
.implements Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$onFavoritesActionBarUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActionBarButtonUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;)V
    .locals 0

    .prologue
    .line 495
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$ActionBarButtonUpdateListener;->this$0:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;
    .param p2, "x1"    # Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$1;

    .prologue
    .line 495
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$ActionBarButtonUpdateListener;-><init>(Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;)V

    return-void
.end method


# virtual methods
.method public onDoneButtonStateUpdated(Z)V
    .locals 1
    .param p1, "isEnable"    # Z

    .prologue
    .line 499
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$ActionBarButtonUpdateListener;->this$0:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->setButtonClickable(Z)V

    .line 500
    return-void
.end method

.method public onSelectionChanged(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 504
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$ActionBarButtonUpdateListener;->this$0:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$ActionBarButtonUpdateListener;->this$0:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;

    # setter for: Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSelectedCount:I
    invoke-static {v0, p1}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->access$202(Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;I)I

    .line 506
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$ActionBarButtonUpdateListener;->this$0:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;

    # invokes: Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->updateActionBarTitle()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->access$500(Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;)V

    .line 508
    :cond_0
    return-void
.end method
