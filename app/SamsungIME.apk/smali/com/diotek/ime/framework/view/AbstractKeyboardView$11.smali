.class Lcom/diotek/ime/framework/view/AbstractKeyboardView$11;
.super Landroid/view/View$AccessibilityDelegate;
.source "AbstractKeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/view/AbstractKeyboardView;->multiTouchShowKey(IILcom/diotek/ime/framework/view/tracker/PointerTracker;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)V
    .locals 0

    .prologue
    .line 6626
    iput-object p1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$11;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 6628
    const/4 v0, 0x1

    return v0
.end method
