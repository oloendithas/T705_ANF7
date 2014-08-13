.class Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;
.super Ljava/lang/Object;
.source "InteractionTabActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setupDropdownActionBar()Landroid/app/ActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V
    .locals 0

    .prologue
    .line 710
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 713
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mSelectActionBarView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$1000(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3$1;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 747
    return-void
.end method
