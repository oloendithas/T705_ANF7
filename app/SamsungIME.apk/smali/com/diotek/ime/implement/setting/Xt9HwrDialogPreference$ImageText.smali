.class Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference$ImageText;
.super Ljava/lang/Object;
.source "Xt9HwrDialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageText"
.end annotation


# instance fields
.field private mImage:Landroid/graphics/drawable/Drawable;

.field private mThickness:Ljava/lang/String;

.field final synthetic this$0:Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;


# direct methods
.method public constructor <init>(Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0
    .param p2, "_image"    # Landroid/graphics/drawable/Drawable;
    .param p3, "_thickness"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference$ImageText;->this$0:Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p2, p0, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference$ImageText;->mImage:Landroid/graphics/drawable/Drawable;

    .line 133
    iput-object p3, p0, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference$ImageText;->mThickness:Ljava/lang/String;

    .line 134
    return-void
.end method


# virtual methods
.method public getColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference$ImageText;->mThickness:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Xt9HwrDialogPreference$ImageText;->mImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
