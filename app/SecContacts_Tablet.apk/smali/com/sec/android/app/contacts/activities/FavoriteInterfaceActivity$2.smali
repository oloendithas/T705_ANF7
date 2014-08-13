.class Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2;
.super Ljava/lang/Object;
.source "FavoriteInterfaceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->setupDropdownActionBar()Landroid/app/ActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2;->this$0:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 322
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2;->this$0:Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->mSelectActionBarView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->access$300(Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2$1;-><init>(Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity$2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 344
    return-void
.end method
