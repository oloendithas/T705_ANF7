.class Lcom/diotek/ime/framework/view/TipsDialog$72;
.super Ljava/lang/Object;
.source "TipsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/view/TipsDialog;->showLanguageSelectDialog(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/view/TipsDialog;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/view/TipsDialog;)V
    .locals 0

    .prologue
    .line 2535
    iput-object p1, p0, Lcom/diotek/ime/framework/view/TipsDialog$72;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2538
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2539
    return-void
.end method
