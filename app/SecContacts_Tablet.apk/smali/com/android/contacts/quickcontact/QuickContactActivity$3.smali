.class Lcom/android/contacts/quickcontact/QuickContactActivity$3;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 0

    .prologue
    .line 522
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$3;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$3;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # invokes: Lcom/android/contacts/quickcontact/QuickContactActivity;->handleOutsideTouch()V
    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$700(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    .line 526
    const/4 v0, 0x1

    return v0
.end method
