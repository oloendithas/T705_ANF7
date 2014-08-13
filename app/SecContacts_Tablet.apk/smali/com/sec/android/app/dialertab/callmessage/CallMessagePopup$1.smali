.class final Lcom/sec/android/app/dialertab/callmessage/CallMessagePopup$1;
.super Ljava/lang/Object;
.source "CallMessagePopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/callmessage/CallMessagePopup;->showHelpDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$checkbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessagePopup$1;->val$checkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessagePopup$1;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->toggle()V

    .line 110
    iget-object v0, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessagePopup$1;->val$checkbox:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 111
    return-void
.end method
