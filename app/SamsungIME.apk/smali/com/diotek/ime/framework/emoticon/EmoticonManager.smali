.class public Lcom/diotek/ime/framework/emoticon/EmoticonManager;
.super Ljava/lang/Object;
.source "EmoticonManager.java"


# static fields
.field public static final EMOTICON_CATEGORY_1:I = 0x0

.field public static final EMOTICON_CATEGORY_2:I = 0x1

.field public static final EMOTICON_CATEGORY_3:I = 0x2

.field public static final EMOTICON_CATEGORY_4:I = 0x3

.field public static final EMOTICON_CATEGORY_5:I = 0x4

.field public static final EMOTICON_CATEGORY_6:I = 0x5

.field private static sInstance:Lcom/diotek/ime/framework/emoticon/EmoticonManager;


# instance fields
.field private final RESOLUTION_FHD:I

.field private final RESOLUTION_HD:I

.field private final RESOLUTION_HVGA:I

.field private final RESOLUTION_QHD:I

.field private final RESOLUTION_QVGA:I

.field private final RESOLUTION_WQXGA:I

.field private final RESOLUTION_WSVGA:I

.field private final RESOLUTION_WVGA:I

.field private final RESOLUTION_WXGA:I

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mEmoticonMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mEmoticonMapCategory1:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mEmoticonMapCategory2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mEmoticonMapCategory3:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mEmoticonMapCategory4:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mEmoticonMapCategory5:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mEmoticonMapCategory6:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mScreenHeight:I

.field private mScreenWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->sInstance:Lcom/diotek/ime/framework/emoticon/EmoticonManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMap:Ljava/util/ArrayList;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMapCategory1:Ljava/util/ArrayList;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMapCategory2:Ljava/util/ArrayList;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMapCategory3:Ljava/util/ArrayList;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMapCategory4:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMapCategory5:Ljava/util/ArrayList;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMapCategory6:Ljava/util/ArrayList;

    .line 32
    const/4 v0, 0x1

    iput v0, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->RESOLUTION_FHD:I

    .line 33
    const/4 v0, 0x2

    iput v0, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->RESOLUTION_HD:I

    .line 34
    const/4 v0, 0x3

    iput v0, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->RESOLUTION_QHD:I

    .line 35
    const/4 v0, 0x4

    iput v0, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->RESOLUTION_WVGA:I

    .line 36
    const/4 v0, 0x5

    iput v0, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->RESOLUTION_QVGA:I

    .line 37
    const/4 v0, 0x6

    iput v0, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->RESOLUTION_HVGA:I

    .line 38
    const/4 v0, 0x7

    iput v0, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->RESOLUTION_WXGA:I

    .line 39
    const/16 v0, 0x8

    iput v0, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->RESOLUTION_WQXGA:I

    .line 40
    const/16 v0, 0x9

    iput v0, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->RESOLUTION_WSVGA:I

    return-void
.end method

.method private getConvertedCategory(I)I
    .locals 6
    .param p1, "category"    # I

    .prologue
    const/4 v5, 0x6

    .line 139
    invoke-direct {p0}, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->getResolution()I

    move-result v4

    .line 142
    .local v4, "resolution":I
    packed-switch v4, :pswitch_data_0

    .line 149
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    .line 150
    .local v0, "ConvertedCategory_Default":[I
    move-object v2, v0

    .line 153
    .end local v0    # "ConvertedCategory_Default":[I
    .local v2, "categorySet":[I
    :goto_0
    packed-switch p1, :pswitch_data_1

    .line 173
    const/4 v3, 0x0

    .line 176
    .local v3, "convertedCategory":I
    :goto_1
    return v3

    .line 145
    .end local v2    # "categorySet":[I
    .end local v3    # "convertedCategory":I
    :pswitch_0
    new-array v1, v5, [I

    fill-array-data v1, :array_1

    .line 146
    .local v1, "ConvertedCategory_FHD":[I
    move-object v2, v1

    .line 147
    .restart local v2    # "categorySet":[I
    goto :goto_0

    .line 155
    .end local v1    # "ConvertedCategory_FHD":[I
    :pswitch_1
    const/4 v5, 0x0

    aget v3, v2, v5

    .line 156
    .restart local v3    # "convertedCategory":I
    goto :goto_1

    .line 158
    .end local v3    # "convertedCategory":I
    :pswitch_2
    const/4 v5, 0x1

    aget v3, v2, v5

    .line 159
    .restart local v3    # "convertedCategory":I
    goto :goto_1

    .line 161
    .end local v3    # "convertedCategory":I
    :pswitch_3
    const/4 v5, 0x2

    aget v3, v2, v5

    .line 162
    .restart local v3    # "convertedCategory":I
    goto :goto_1

    .line 164
    .end local v3    # "convertedCategory":I
    :pswitch_4
    const/4 v5, 0x3

    aget v3, v2, v5

    .line 165
    .restart local v3    # "convertedCategory":I
    goto :goto_1

    .line 167
    .end local v3    # "convertedCategory":I
    :pswitch_5
    const/4 v5, 0x4

    aget v3, v2, v5

    .line 168
    .restart local v3    # "convertedCategory":I
    goto :goto_1

    .line 170
    .end local v3    # "convertedCategory":I
    :pswitch_6
    const/4 v5, 0x5

    aget v3, v2, v5

    .line 171
    .restart local v3    # "convertedCategory":I
    goto :goto_1

    .line 142
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 149
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
    .end array-data

    .line 153
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 145
    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
    .end array-data
.end method

.method public static declared-synchronized getInstance()Lcom/diotek/ime/framework/emoticon/EmoticonManager;
    .locals 2

    .prologue
    .line 48
    const-class v1, Lcom/diotek/ime/framework/emoticon/EmoticonManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->sInstance:Lcom/diotek/ime/framework/emoticon/EmoticonManager;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;

    invoke-direct {v0}, Lcom/diotek/ime/framework/emoticon/EmoticonManager;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->sInstance:Lcom/diotek/ime/framework/emoticon/EmoticonManager;

    .line 51
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->sInstance:Lcom/diotek/ime/framework/emoticon/EmoticonManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getResolution()I
    .locals 8

    .prologue
    const/16 v7, 0x500

    const/16 v6, 0x320

    const/16 v5, 0x1e0

    const/16 v4, 0x140

    .line 180
    const/4 v1, 0x0

    .line 182
    .local v1, "resolution":I
    iget-object v2, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 183
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mScreenWidth:I

    .line 184
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mScreenHeight:I

    .line 186
    iget v2, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mScreenHeight:I

    const/16 v3, 0x780

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mScreenWidth:I

    const/16 v3, 0x438

    if-ne v2, v3, :cond_1

    .line 187
    const/4 v1, 0x1

    .line 205
    :cond_0
    :goto_0
    return v1

    .line 188
    :cond_1
    iget v2, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mScreenHeight:I

    if-ne v2, v7, :cond_2

    iget v2, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mScreenWidth:I

    const/16 v3, 0x2d0

    if-ne v2, v3, :cond_2

    .line 189
    const/4 v1, 0x2

    goto :goto_0

    .line 190
    :cond_2
    iget v2, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mScreenHeight:I

    const/16 v3, 0x3c0

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mScreenWidth:I

    const/16 v3, 0x21c

    if-ne v2, v3, :cond_3

    .line 191
    const/4 v1, 0x3

    goto :goto_0

    .line 192
    :cond_3
    iget v2, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mScreenHeight:I

    if-ne v2, v6, :cond_4

    iget v2, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mScreenWidth:I

    if-ne v2, v5, :cond_4

    .line 193
    const/4 v1, 0x4

    goto :goto_0

    .line 194
    :cond_4
    iget v2, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mScreenHeight:I

    if-ne v2, v4, :cond_5

    iget v2, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mScreenWidth:I

    const/16 v3, 0xf0

    if-ne v2, v3, :cond_5

    .line 195
    const/4 v1, 0x5

    goto :goto_0

    .line 196
    :cond_5
    iget v2, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mScreenHeight:I

    if-ne v2, v5, :cond_6

    iget v2, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mScreenWidth:I

    if-ne v2, v4, :cond_6

    .line 197
    const/4 v1, 0x6

    goto :goto_0

    .line 198
    :cond_6
    iget v2, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mScreenHeight:I

    if-ne v2, v7, :cond_7

    iget v2, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mScreenWidth:I

    if-ne v2, v6, :cond_7

    .line 199
    const/4 v1, 0x7

    goto :goto_0

    .line 200
    :cond_7
    iget v2, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mScreenHeight:I

    const/16 v3, 0xa00

    if-ne v2, v3, :cond_8

    iget v2, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mScreenWidth:I

    const/16 v3, 0x640

    if-ne v2, v3, :cond_8

    .line 201
    const/16 v1, 0x8

    goto :goto_0

    .line 202
    :cond_8
    iget v2, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mScreenHeight:I

    const/16 v3, 0x400

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mScreenWidth:I

    const/16 v3, 0x258

    if-ne v2, v3, :cond_0

    .line 203
    const/16 v1, 0x9

    goto :goto_0
.end method


# virtual methods
.method public getCategoryByKeyCode(I)I
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, "category":I
    sparse-switch p1, :sswitch_data_0

    .line 235
    :goto_0
    return v0

    .line 212
    :sswitch_0
    const/4 v0, 0x0

    .line 213
    goto :goto_0

    .line 215
    :sswitch_1
    const/4 v0, 0x0

    .line 216
    goto :goto_0

    .line 218
    :sswitch_2
    const/4 v0, 0x1

    .line 219
    goto :goto_0

    .line 221
    :sswitch_3
    const/4 v0, 0x2

    .line 222
    goto :goto_0

    .line 224
    :sswitch_4
    const/4 v0, 0x3

    .line 225
    goto :goto_0

    .line 227
    :sswitch_5
    const/4 v0, 0x4

    .line 228
    goto :goto_0

    .line 230
    :sswitch_6
    const/4 v0, 0x5

    .line 231
    goto :goto_0

    .line 210
    nop

    :sswitch_data_0
    .sparse-switch
        -0x149 -> :sswitch_6
        -0x148 -> :sswitch_5
        -0x147 -> :sswitch_4
        -0x146 -> :sswitch_3
        -0x145 -> :sswitch_2
        -0x144 -> :sswitch_1
        -0x87 -> :sswitch_0
    .end sparse-switch
.end method

.method public getEmoticonMap()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMap:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getEmoticonMapByCategory(I)Ljava/util/ArrayList;
    .locals 2
    .param p1, "category"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v1, "emoticonMapCategory":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->getConvertedCategory(I)I

    move-result v0

    .line 109
    .local v0, "convertedCategory":I
    packed-switch v0, :pswitch_data_0

    .line 131
    :goto_0
    return-object v1

    .line 111
    :pswitch_0
    iget-object v1, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMapCategory1:Ljava/util/ArrayList;

    .line 112
    goto :goto_0

    .line 114
    :pswitch_1
    iget-object v1, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMapCategory2:Ljava/util/ArrayList;

    .line 115
    goto :goto_0

    .line 117
    :pswitch_2
    iget-object v1, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMapCategory3:Ljava/util/ArrayList;

    .line 118
    goto :goto_0

    .line 120
    :pswitch_3
    iget-object v1, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMapCategory4:Ljava/util/ArrayList;

    .line 121
    goto :goto_0

    .line 123
    :pswitch_4
    iget-object v1, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMapCategory5:Ljava/util/ArrayList;

    .line 124
    goto :goto_0

    .line 126
    :pswitch_5
    iget-object v1, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMapCategory6:Ljava/util/ArrayList;

    .line 127
    goto :goto_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final initialize()V
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 56
    iget-object v0, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 58
    iget-object v0, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mScreenWidth:I

    .line 59
    iget-object v0, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mScreenHeight:I

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->setEmoticonMap()V

    .line 62
    return-void
.end method

.method public setEmoticonMap()V
    .locals 7

    .prologue
    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, "category":I
    const-string v1, ""

    .line 68
    .local v1, "code":Ljava/lang/String;
    invoke-static {}, Lcom/diotek/ime/framework/emoticon/EmoticonMap;->getEmoticonMap()[Lcom/diotek/ime/framework/emoticon/EmoticonInfo;

    move-result-object v3

    .line 69
    .local v3, "emoticonMap":[Lcom/diotek/ime/framework/emoticon/EmoticonInfo;
    if-eqz v3, :cond_1

    .line 70
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_0

    .line 71
    aget-object v5, v3, v4

    invoke-virtual {v5}, Lcom/diotek/ime/framework/emoticon/EmoticonInfo;->getCategoryID()I

    move-result v0

    .line 72
    aget-object v5, v3, v4

    invoke-virtual {v5}, Lcom/diotek/ime/framework/emoticon/EmoticonInfo;->getEmoticonCode()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-static {v1}, Lcom/diotek/ime/framework/util/Utils;->unicodeToUTF16(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, "covertedCode":Ljava/lang/String;
    packed-switch v0, :pswitch_data_0

    .line 70
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 76
    :pswitch_0
    iget-object v5, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMapCategory1:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 79
    :pswitch_1
    iget-object v5, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMapCategory2:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 82
    :pswitch_2
    iget-object v5, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMapCategory3:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 85
    :pswitch_3
    iget-object v5, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMapCategory4:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 88
    :pswitch_4
    iget-object v5, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMapCategory5:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 91
    :pswitch_5
    iget-object v5, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMapCategory6:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 97
    .end local v2    # "covertedCode":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMap:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMapCategory1:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 98
    iget-object v5, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMap:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMapCategory2:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 99
    iget-object v5, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMap:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMapCategory3:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 100
    iget-object v5, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMap:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMapCategory4:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 101
    iget-object v5, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMap:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMapCategory5:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 102
    iget-object v5, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMap:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/diotek/ime/framework/emoticon/EmoticonManager;->mEmoticonMapCategory6:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 104
    .end local v4    # "i":I
    :cond_1
    return-void

    .line 74
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
