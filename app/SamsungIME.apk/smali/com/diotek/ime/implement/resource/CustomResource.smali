.class public Lcom/diotek/ime/implement/resource/CustomResource;
.super Ljava/lang/Object;
.source "CustomResource.java"


# static fields
.field private static R:Lcom/diotek/ime/implement/resource/CustomResource;


# instance fields
.field private packageName:Ljava/lang/String;

.field private res:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/implement/resource/CustomResource;->R:Lcom/diotek/ime/implement/resource/CustomResource;

    return-void
.end method

.method private constructor <init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/diotek/ime/implement/resource/CustomResource;->res:Landroid/content/res/Resources;

    .line 15
    iput-object v0, p0, Lcom/diotek/ime/implement/resource/CustomResource;->packageName:Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lcom/diotek/ime/implement/resource/CustomResource;->res:Landroid/content/res/Resources;

    .line 19
    iput-object p2, p0, Lcom/diotek/ime/implement/resource/CustomResource;->packageName:Ljava/lang/String;

    .line 21
    return-void
.end method

.method private static GetResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/diotek/ime/implement/resource/CustomResource;->R:Lcom/diotek/ime/implement/resource/CustomResource;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v0}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v0

    .line 54
    :cond_0
    sget-object v0, Lcom/diotek/ime/implement/resource/CustomResource;->R:Lcom/diotek/ime/implement/resource/CustomResource;

    invoke-direct {v0}, Lcom/diotek/ime/implement/resource/CustomResource;->getR()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public static getColor(Ljava/lang/String;)I
    .locals 3
    .param p0, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "color/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "color":Ljava/lang/String;
    invoke-static {}, Lcom/diotek/ime/implement/resource/CustomResource;->GetResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0}, Lcom/diotek/ime/implement/resource/CustomResource;->getResourceID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    return v1
.end method

.method public static getDimension(Ljava/lang/String;)F
    .locals 3
    .param p0, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dimen/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "uri":Ljava/lang/String;
    invoke-static {}, Lcom/diotek/ime/implement/resource/CustomResource;->GetResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0}, Lcom/diotek/ime/implement/resource/CustomResource;->getResourceID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    return v1
.end method

.method public static getDimensionPixelSize(Ljava/lang/String;)I
    .locals 3
    .param p0, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dimen/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "uri":Ljava/lang/String;
    invoke-static {}, Lcom/diotek/ime/implement/resource/CustomResource;->GetResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0}, Lcom/diotek/ime/implement/resource/CustomResource;->getResourceID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    return v1
.end method

.method public static getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawable/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "uri":Ljava/lang/String;
    invoke-static {}, Lcom/diotek/ime/implement/resource/CustomResource;->GetResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0}, Lcom/diotek/ime/implement/resource/CustomResource;->getResourceID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public static getDrawableID(Ljava/lang/String;)I
    .locals 3
    .param p0, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawable/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "uri":Ljava/lang/String;
    invoke-static {v0}, Lcom/diotek/ime/implement/resource/CustomResource;->getResourceID(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static getID(Ljava/lang/String;)I
    .locals 3
    .param p0, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "uri":Ljava/lang/String;
    invoke-static {v0}, Lcom/diotek/ime/implement/resource/CustomResource;->getResourceID(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private getIdentifier(Ljava/lang/String;)I
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/diotek/ime/implement/resource/CustomResource;->res:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/implement/resource/CustomResource;->packageName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 33
    :cond_0
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v0}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v0

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/implement/resource/CustomResource;->res:Landroid/content/res/Resources;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/diotek/ime/implement/resource/CustomResource;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getInteger(Ljava/lang/String;)I
    .locals 3
    .param p0, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "integer/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "uri":Ljava/lang/String;
    invoke-static {}, Lcom/diotek/ime/implement/resource/CustomResource;->GetResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0}, Lcom/diotek/ime/implement/resource/CustomResource;->getResourceID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    return v1
.end method

.method public static getLayout(Ljava/lang/String;)I
    .locals 3
    .param p0, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "layout/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "uri":Ljava/lang/String;
    invoke-static {v0}, Lcom/diotek/ime/implement/resource/CustomResource;->getResourceID(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static getObtainTypedArray(Ljava/lang/String;)Landroid/content/res/TypedArray;
    .locals 3
    .param p0, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "array/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "uri":Ljava/lang/String;
    invoke-static {}, Lcom/diotek/ime/implement/resource/CustomResource;->GetResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0}, Lcom/diotek/ime/implement/resource/CustomResource;->getResourceID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    return-object v1
.end method

.method private getR()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/diotek/ime/implement/resource/CustomResource;->res:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v0}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v0

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/resource/CustomResource;->res:Landroid/content/res/Resources;

    return-object v0
.end method

.method private static getResourceID(Ljava/lang/String;)I
    .locals 2
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 58
    sget-object v1, Lcom/diotek/ime/implement/resource/CustomResource;->R:Lcom/diotek/ime/implement/resource/CustomResource;

    if-nez v1, :cond_0

    .line 59
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v1}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v1

    .line 61
    :cond_0
    sget-object v1, Lcom/diotek/ime/implement/resource/CustomResource;->R:Lcom/diotek/ime/implement/resource/CustomResource;

    invoke-direct {v1, p0}, Lcom/diotek/ime/implement/resource/CustomResource;->getIdentifier(Ljava/lang/String;)I

    move-result v0

    .line 62
    .local v0, "identifier":I
    if-nez v0, :cond_1

    .line 63
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v1}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v1

    .line 65
    :cond_1
    return v0
.end method

.method public static getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "array/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "uri":Ljava/lang/String;
    invoke-static {}, Lcom/diotek/ime/implement/resource/CustomResource;->GetResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0}, Lcom/diotek/ime/implement/resource/CustomResource;->getResourceID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getStringID(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "string/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "uri":Ljava/lang/String;
    invoke-static {}, Lcom/diotek/ime/implement/resource/CustomResource;->GetResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0}, Lcom/diotek/ime/implement/resource/CustomResource;->getResourceID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getXML(Ljava/lang/String;)I
    .locals 3
    .param p0, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "xml/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "uri":Ljava/lang/String;
    invoke-static {v0}, Lcom/diotek/ime/implement/resource/CustomResource;->getResourceID(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static init(Landroid/content/res/Resources;)V
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 44
    sget-object v1, Lcom/diotek/ime/implement/resource/CustomResource;->R:Lcom/diotek/ime/implement/resource/CustomResource;

    if-nez v1, :cond_0

    .line 45
    const-class v1, Lcom/sec/android/inputmethod/SamsungKeypad;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "packageName":Ljava/lang/String;
    new-instance v1, Lcom/diotek/ime/implement/resource/CustomResource;

    invoke-direct {v1, p0, v0}, Lcom/diotek/ime/implement/resource/CustomResource;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    sput-object v1, Lcom/diotek/ime/implement/resource/CustomResource;->R:Lcom/diotek/ime/implement/resource/CustomResource;

    .line 48
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_0
    return-void
.end method
