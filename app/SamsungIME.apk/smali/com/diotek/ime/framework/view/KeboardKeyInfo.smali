.class public Lcom/diotek/ime/framework/view/KeboardKeyInfo;
.super Ljava/lang/Object;
.source "KeboardKeyInfo.java"


# instance fields
.field public codes:[I

.field public edgeFlags:I

.field public gap:I

.field public height:I

.field public icon:Landroid/graphics/drawable/Drawable;

.field public iconPreview:Landroid/graphics/drawable/Drawable;

.field public label:Ljava/lang/CharSequence;

.field public on:Z

.field public popupCharacters:Ljava/lang/CharSequence;

.field public popupResId:I

.field public pressed:Z

.field public repeatable:Z

.field public sticky:Z

.field public text:Ljava/lang/CharSequence;

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v1, p0, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->codes:[I

    .line 9
    iput v0, p0, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->edgeFlags:I

    .line 10
    iput v0, p0, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->height:I

    .line 11
    iput-object v1, p0, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 12
    iput-object v1, p0, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 13
    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->on:Z

    .line 14
    iput-object v1, p0, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->popupCharacters:Ljava/lang/CharSequence;

    .line 15
    iput v0, p0, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->popupResId:I

    .line 16
    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->pressed:Z

    .line 17
    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->repeatable:Z

    .line 18
    iput v0, p0, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->x:I

    .line 19
    iput v0, p0, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->y:I

    .line 20
    iput v0, p0, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->width:I

    .line 21
    iput-object v1, p0, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->text:Ljava/lang/CharSequence;

    .line 22
    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->sticky:Z

    .line 23
    iput v0, p0, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->gap:I

    .line 24
    iput-object v1, p0, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->label:Ljava/lang/CharSequence;

    return-void
.end method

.method public static clone(Lcom/diotek/ime/framework/view/Keyboard$Key;)Lcom/diotek/ime/framework/view/KeboardKeyInfo;
    .locals 2
    .param p0, "key"    # Lcom/diotek/ime/framework/view/Keyboard$Key;

    .prologue
    .line 27
    new-instance v0, Lcom/diotek/ime/framework/view/KeboardKeyInfo;

    invoke-direct {v0}, Lcom/diotek/ime/framework/view/KeboardKeyInfo;-><init>()V

    .line 28
    .local v0, "keyInfo":Lcom/diotek/ime/framework/view/KeboardKeyInfo;
    iget-object v1, p0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    iput-object v1, v0, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->codes:[I

    .line 29
    iget v1, p0, Lcom/diotek/ime/framework/view/Keyboard$Key;->edgeFlags:I

    iput v1, v0, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->edgeFlags:I

    .line 30
    iget v1, p0, Lcom/diotek/ime/framework/view/Keyboard$Key;->height:I

    iput v1, v0, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->height:I

    .line 31
    iget-object v1, p0, Lcom/diotek/ime/framework/view/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 32
    iget-object v1, p0, Lcom/diotek/ime/framework/view/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 33
    iget-boolean v1, p0, Lcom/diotek/ime/framework/view/Keyboard$Key;->on:Z

    iput-boolean v1, v0, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->on:Z

    .line 34
    iget-object v1, p0, Lcom/diotek/ime/framework/view/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->popupCharacters:Ljava/lang/CharSequence;

    .line 35
    iget v1, p0, Lcom/diotek/ime/framework/view/Keyboard$Key;->popupResId:I

    iput v1, v0, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->popupResId:I

    .line 36
    iget-boolean v1, p0, Lcom/diotek/ime/framework/view/Keyboard$Key;->pressed:Z

    iput-boolean v1, v0, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->pressed:Z

    .line 37
    iget v1, p0, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    iput v1, v0, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->x:I

    .line 38
    iget v1, p0, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    iput v1, v0, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->y:I

    .line 39
    iget v1, p0, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    iput v1, v0, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->width:I

    .line 40
    iget-object v1, p0, Lcom/diotek/ime/framework/view/Keyboard$Key;->text:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->text:Ljava/lang/CharSequence;

    .line 41
    iget v1, p0, Lcom/diotek/ime/framework/view/Keyboard$Key;->gap:I

    iput v1, v0, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->gap:I

    .line 42
    iget-object v1, p0, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->label:Ljava/lang/CharSequence;

    .line 44
    return-object v0
.end method
