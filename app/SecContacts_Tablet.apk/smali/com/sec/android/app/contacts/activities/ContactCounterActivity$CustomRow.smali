.class public Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;
.super Ljava/lang/Object;
.source "ContactCounterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/ContactCounterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomRow"
.end annotation


# instance fields
.field private mCol1:Ljava/lang/String;

.field private mCol2:Ljava/lang/String;

.field private mIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "col1"    # Ljava/lang/String;
    .param p2, "col2"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;->mCol1:Ljava/lang/String;

    .line 324
    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;->mCol2:Ljava/lang/String;

    .line 325
    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 328
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;->mCol1:Ljava/lang/String;

    .line 329
    iput-object p2, p0, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;->mCol2:Ljava/lang/String;

    .line 330
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "col1"    # Ljava/lang/String;
    .param p2, "col2"    # Ljava/lang/String;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;->mCol1:Ljava/lang/String;

    .line 324
    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;->mCol2:Ljava/lang/String;

    .line 325
    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 333
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;->mCol1:Ljava/lang/String;

    .line 334
    iput-object p2, p0, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;->mCol2:Ljava/lang/String;

    .line 335
    iput-object p3, p0, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 336
    return-void
.end method


# virtual methods
.method public getCol1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;->mCol1:Ljava/lang/String;

    return-object v0
.end method

.method public getCol2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;->mCol2:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
