.class Lcom/android/contacts/quickcontact/QuickContactActivity$18$1;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity$18;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/quickcontact/QuickContactActivity$18;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity$18;)V
    .locals 0

    .prologue
    .line 2578
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$18$1;->this$1:Lcom/android/contacts/quickcontact/QuickContactActivity$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2581
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$18$1;->this$1:Lcom/android/contacts/quickcontact/QuickContactActivity$18;

    iget-object v0, v0, Lcom/android/contacts/quickcontact/QuickContactActivity$18;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    const/4 v1, 0x1

    # setter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasFinishedAnimatingIn:Z
    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$2602(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)Z

    .line 2582
    return-void
.end method
