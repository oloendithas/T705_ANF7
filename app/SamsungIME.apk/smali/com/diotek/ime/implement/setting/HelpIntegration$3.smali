.class Lcom/diotek/ime/implement/setting/HelpIntegration$3;
.super Ljava/lang/Object;
.source "HelpIntegration.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/setting/HelpIntegration;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/setting/HelpIntegration;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/HelpIntegration;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/diotek/ime/implement/setting/HelpIntegration$3;->this$0:Lcom/diotek/ime/implement/setting/HelpIntegration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Landroid/view/MotionEvent;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/HelpIntegration$3;->this$0:Lcom/diotek/ime/implement/setting/HelpIntegration;

    invoke-virtual {v0}, Lcom/diotek/ime/implement/setting/HelpIntegration;->hideSoftKeyboardFromWindow()V

    .line 288
    const/4 v0, 0x0

    return v0
.end method
