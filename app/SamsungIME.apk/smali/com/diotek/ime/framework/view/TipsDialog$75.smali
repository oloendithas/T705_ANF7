.class Lcom/diotek/ime/framework/view/TipsDialog$75;
.super Ljava/lang/Object;
.source "TipsDialog.java"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/view/TipsDialog;->showDiscoverability(ILandroid/view/View;Landroid/view/View;)V
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
    .line 2709
    iput-object p1, p0, Lcom/diotek/ime/framework/view/TipsDialog$75;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2713
    iget-object v1, p0, Lcom/diotek/ime/framework/view/TipsDialog$75;->this$0:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v1, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020285

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2714
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2715
    return-object v0
.end method
