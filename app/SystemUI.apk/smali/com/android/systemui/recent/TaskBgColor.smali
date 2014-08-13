.class public Lcom/android/systemui/recent/TaskBgColor;
.super Ljava/lang/Object;
.source "TaskBgColor.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/android/systemui/recent/TaskBgColor;->mContext:Landroid/content/Context;

    .line 13
    return-void
.end method


# virtual methods
.method public extractColor(Landroid/graphics/drawable/Drawable;Lcom/android/systemui/recent/TaskDescription;)I
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "td"    # Lcom/android/systemui/recent/TaskDescription;

    .prologue
    .line 16
    const v0, -0xffaa67

    .line 17
    .local v0, "returnColor":I
    return v0
.end method
