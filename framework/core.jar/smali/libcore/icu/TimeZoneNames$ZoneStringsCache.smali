.class public Llibcore/icu/TimeZoneNames$ZoneStringsCache;
.super Llibcore/util/BasicLruCache;
.source "TimeZoneNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/icu/TimeZoneNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZoneStringsCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llibcore/util/BasicLruCache",
        "<",
        "Ljava/util/Locale;",
        "[[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final internTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    # getter for: Llibcore/icu/TimeZoneNames;->availableTimeZoneIds:[Ljava/lang/String;
    invoke-static {}, Llibcore/icu/TimeZoneNames;->access$000()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    invoke-direct {p0, v0}, Llibcore/util/BasicLruCache;-><init>(I)V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Llibcore/icu/TimeZoneNames$ZoneStringsCache;->internTable:Ljava/util/HashMap;

    .line 65
    return-void
.end method

.method private declared-synchronized internStrings([[Ljava/lang/String;)V
    .locals 5
    .param p1, "result"    # [[Ljava/lang/String;

    .prologue
    .line 93
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    array-length v4, p1

    if-ge v0, v4, :cond_2

    .line 94
    const/4 v1, 0x1

    .local v1, "j":I
    :goto_1
    const/4 v4, 0x5

    if-ge v1, v4, :cond_1

    .line 95
    aget-object v4, p1, v0

    aget-object v3, v4, v1

    .line 96
    .local v3, "original":Ljava/lang/String;
    iget-object v4, p0, Llibcore/icu/TimeZoneNames$ZoneStringsCache;->internTable:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 97
    .local v2, "nonDuplicate":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 98
    iget-object v4, p0, Llibcore/icu/TimeZoneNames$ZoneStringsCache;->internTable:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 100
    :cond_0
    aget-object v4, p1, v0

    aput-object v2, v4, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 93
    .end local v1    # "j":I
    .end local v2    # "nonDuplicate":Ljava/lang/String;
    .end local v3    # "original":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .restart local v1    # "j":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    .end local v1    # "j":I
    :cond_2
    monitor-exit p0

    return-void
.end method


# virtual methods
.method protected bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 55
    check-cast p1, Ljava/util/Locale;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Llibcore/icu/TimeZoneNames$ZoneStringsCache;->create(Ljava/util/Locale;)[[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected create(Ljava/util/Locale;)[[Ljava/lang/String;
    .locals 18
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 71
    .local v13, "start":J
    # getter for: Llibcore/icu/TimeZoneNames;->availableTimeZoneIds:[Ljava/lang/String;
    invoke-static {}, Llibcore/icu/TimeZoneNames;->access$000()[Ljava/lang/String;

    move-result-object v15

    array-length v15, v15

    const/16 v16, 0x5

    filled-new-array/range {v15 .. v16}, [I

    move-result-object v15

    const-class v16, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[Ljava/lang/String;

    .line 72
    .local v12, "result":[[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    # getter for: Llibcore/icu/TimeZoneNames;->availableTimeZoneIds:[Ljava/lang/String;
    invoke-static {}, Llibcore/icu/TimeZoneNames;->access$000()[Ljava/lang/String;

    move-result-object v15

    array-length v15, v15

    if-ge v5, v15, :cond_0

    .line 73
    aget-object v15, v12, v5

    const/16 v16, 0x0

    # getter for: Llibcore/icu/TimeZoneNames;->availableTimeZoneIds:[Ljava/lang/String;
    invoke-static {}, Llibcore/icu/TimeZoneNames;->access$000()[Ljava/lang/String;

    move-result-object v17

    aget-object v17, v17, v5

    aput-object v17, v15, v16

    .line 72
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 76
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 77
    .local v10, "nativeStart":J
    invoke-virtual/range {p1 .. p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v15

    # invokes: Llibcore/icu/TimeZoneNames;->fillZoneStrings(Ljava/lang/String;[[Ljava/lang/String;)V
    invoke-static {v15, v12}, Llibcore/icu/TimeZoneNames;->access$100(Ljava/lang/String;[[Ljava/lang/String;)V

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 80
    .local v8, "nativeEnd":J
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Llibcore/icu/TimeZoneNames$ZoneStringsCache;->internStrings([[Ljava/lang/String;)V

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 85
    .local v3, "end":J
    sub-long v6, v8, v10

    .line 86
    .local v6, "nativeDuration":J
    sub-long v1, v3, v13

    .line 87
    .local v1, "duration":J
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Loaded time zone names for \""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\" in "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "ms"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "ms in ICU)"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/System;->logI(Ljava/lang/String;)V

    .line 89
    return-object v12
.end method
