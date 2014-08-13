.class Lcom/android/contacts/activities/DialtactsActivity$1$1;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/DialtactsActivity$1;->onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/activities/DialtactsActivity$1;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/DialtactsActivity$1;)V
    .locals 0

    .prologue
    .line 739
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity$1$1;->this$1:Lcom/android/contacts/activities/DialtactsActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 741
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1$1;->this$1:Lcom/android/contacts/activities/DialtactsActivity$1;

    iget-object v0, v0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1$1;->this$1:Lcom/android/contacts/activities/DialtactsActivity$1;

    iget-object v0, v0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    # getter for: Lcom/android/contacts/activities/DialtactsActivity;->mCurrentTab:I
    invoke-static {}, Lcom/android/contacts/activities/DialtactsActivity;->access$1300()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 744
    :cond_0
    return-void
.end method
