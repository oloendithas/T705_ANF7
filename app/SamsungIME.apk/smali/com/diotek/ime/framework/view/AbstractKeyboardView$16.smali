.class Lcom/diotek/ime/framework/view/AbstractKeyboardView$16;
.super Ljava/lang/Object;
.source "AbstractKeyboardView.java"

# interfaces
.implements Lcom/diotek/ime/framework/view/DropActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/view/AbstractKeyboardView;
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
    .line 11601
    iput-object p1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$16;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDropAction(Landroid/view/DragEvent;)V
    .locals 13
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    const/high16 v12, 0x40000

    .line 11606
    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$16;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v11

    float-to-int v11, v11

    # invokes: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getNearestKey(II)Lcom/diotek/ime/framework/view/Keyboard$Key;
    invoke-static {v9, v10, v11}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$2200(Lcom/diotek/ime/framework/view/AbstractKeyboardView;II)Lcom/diotek/ime/framework/view/Keyboard$Key;

    move-result-object v6

    .line 11607
    .local v6, "nKey":Lcom/diotek/ime/framework/view/Keyboard$Key;
    if-nez v6, :cond_1

    .line 11657
    :cond_0
    :goto_0
    return-void

    .line 11609
    :cond_1
    const/4 v7, 0x0

    .line 11612
    .local v7, "source":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v2

    .line 11613
    .local v2, "clipdata":Landroid/content/ClipData;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v9

    const-string v10, "text/plain"

    invoke-virtual {v9, v10}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v2}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v9

    const-string v10, "text/html"

    invoke-virtual {v9, v10}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 11617
    :cond_2
    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    .line 11618
    .local v1, "N":I
    const/high16 v0, 0x40000

    .line 11619
    .local v0, "MAX_LIMIT":I
    const/4 v5, 0x0

    .line 11620
    .local v5, "item":Landroid/content/ClipData$Item;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_6

    .line 11621
    invoke-virtual {v2, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v5

    .line 11622
    invoke-virtual {v5}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v5}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-gt v9, v12, :cond_4

    :cond_3
    invoke-virtual {v5}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    if-nez v9, :cond_5

    .line 11624
    :cond_4
    const/4 v7, 0x0

    .line 11620
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 11626
    :cond_5
    invoke-virtual {v5}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 11637
    :cond_6
    const/4 v4, 0x0

    .line 11638
    .local v4, "ignoreCase":Z
    if-eqz v7, :cond_8

    .line 11639
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    .line 11640
    .local v8, "sourceLength":I
    if-gt v8, v12, :cond_7

    if-nez v8, :cond_9

    .line 11641
    :cond_7
    const/4 v4, 0x1

    .line 11647
    .end local v8    # "sourceLength":I
    :cond_8
    :goto_3
    if-eqz v7, :cond_0

    if-nez v4, :cond_0

    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$16;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v9, v9, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->isShortCutMode()Z

    move-result v9

    if-eqz v9, :cond_0

    if-eqz v6, :cond_0

    iget-object v9, v6, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    invoke-static {v9}, Ljava/lang/Character;->isDigit(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 11649
    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$16;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/4 v10, -0x1

    iput v10, v9, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isSelectedNumber:I

    .line 11650
    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$16;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v9, v6}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(Lcom/diotek/ime/framework/view/Keyboard$Key;)V

    .line 11651
    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$16;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v9, v9, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mShortcutsController:Lcom/diotek/ime/framework/input/shortcutphrase/ShortcutPhraseController;

    invoke-virtual {v9, v7, v6}, Lcom/diotek/ime/framework/input/shortcutphrase/ShortcutPhraseController;->setShortCutPhrase(Ljava/lang/String;Lcom/diotek/ime/framework/view/Keyboard$Key;)V

    goto/16 :goto_0

    .line 11643
    .restart local v8    # "sourceLength":I
    :cond_9
    invoke-static {v7}, Lcom/diotek/ime/framework/util/UnicodeUtils;->containObjUnicode(Ljava/lang/String;)Z

    move-result v4

    goto :goto_3
.end method
